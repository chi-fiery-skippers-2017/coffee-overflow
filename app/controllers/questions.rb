get '/questions/new' do
  if request.xhr?
    # 'so cool'
    erb :'questions/_new', layout: false
  end
end


get '/questions/:id/show' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

