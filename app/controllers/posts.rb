get '/posts/:id' do
  @post = Post.find params[:id]
  @answers = @post.answers
  erb :'/posts/show'
end

post '/comments' do
  Comment.create(body: params[:body], commentable_type: params[:commentable_type], commentable_id: params[:commentable_id], user_id: session[:user_id])

  redirect "/posts/#{params[:post_id]}"

end

post '/answers' do
  Answer.create(body: params[:body], user_id: session[:user_id], post_id: params[:post_id])
  redirect "/posts/#{params[:post_id]}"
end
