get '/questions/:id/show' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

post '/questions/:id/answers' do
  @user = User.find_by(id: session[:user_id])
end
