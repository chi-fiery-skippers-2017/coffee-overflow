get '/users' do
  "Hi, you don't need me right now!"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    "You just created a new user"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/new' do
  erb :'users/new'
end

