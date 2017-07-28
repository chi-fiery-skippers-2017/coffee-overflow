# get '/users' do
#   "Hi, you don't need me right now!"
# end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    "You just created a new user"
    #Sign your user in now
    session[:user_id] = @user.id
    redirect "users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id'
  if logged_in?
    @user = User.find(session[:user_id])
  else
    # "This redirects to sessions/new"
    @errors =
    redirect 'sessions/new'
  end
end
