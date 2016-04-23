

post '/users' do
  @account = User.create(username: params[:username], email: params[:email], password_digest: params[:password])
  if request.xhr?
    content :json
    @account.to_json
  else
    redirect '/'
  end
end

get '/users/:id' do
  @user = User.find(1)
  # @user = User.find(session[:user_id])
  erb :"/users/show"
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:account])
  # @user = User.find(session[:user_id])

  erb :"/users/show"
end

