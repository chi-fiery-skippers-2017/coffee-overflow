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

get '/users/:id' do
  if logged_in?
    @user = User.find(session[:user_id])
    "You are now logged in!"
    #Later change this to redirecting to user's profile page
  else
    @errors = "You are presently not logged in"
    redirect '/sessions/new'
  end
end
