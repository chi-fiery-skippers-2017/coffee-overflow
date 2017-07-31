get '/questions/new' do
  if request.xhr?
    erb :'questions/_new', layout: false
  end
end

post '/questions' do
  @question = Question.new(params[:question])
  @question.author_id = current_user.id

  if @question.save
    if request.xhr?
      erb :'questions/_post_questions', layout: false, locals: {question: @question}
    end
  end
end


get '/questions/:id/show' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end



