get '/users' do
  "Hi, you don't need me right now!"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    "AJAX HERE"
  else
    @errors = user.errors.full_messages
  "You just created a new user"
  end
end

get '/users/new' do
  erb :'users/new'
end

