get '/users/login' do
  erb :'session/login'
end

post '/' do
  @account = User.find_by(email: params[:email])
  if @account.password_digest == params[:password]
    session[:user_id] = @account.id
    p "#{session[:user_id]}"
    redirect "/"
  else
    erb :'session/login'
  end

end
