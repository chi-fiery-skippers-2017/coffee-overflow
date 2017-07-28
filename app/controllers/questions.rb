get '/questions/new' do
  if request.xhr?
    erb :'questions/_new.erb', layout: false
  end
end


get '/questions/:id/show' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

