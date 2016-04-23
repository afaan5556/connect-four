get '/' do
  @posts = Post.all
  erb :index
end

get '/logout' do
  session.clear
  redirect '/'
end

post '/posts/new' do
  @user = User.find(session[:user_id])
  post = Post.create(title: params[:title], body: params[:body], user_id: @user.id)
  @posts = Post.all
  if request.xhr?
    erb :'/posts/new-post', locals: {post: post}, layout: false
  else
    erb :index
  end
end

post '/' do
  @user = User.find_by(email: params[:email])
  session[:user_id] = @user.id
  redirect '/'
end

