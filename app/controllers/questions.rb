get '/questions/:id/show' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end
