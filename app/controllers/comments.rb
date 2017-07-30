get '/comments/new' do
  erb :"/comments/_new_comment", layout: false
end

post '/comments' do
  @comment = Comment.new(params[:comment])
  @comment.author_id = session[:user_id]

    erb :"/comments/_post_comment", layout: false, locals: {comment: @comment}

end
