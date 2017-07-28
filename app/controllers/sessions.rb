get '/sessions/new' do
  erb :'sessions/index'
end

post '/sessions' do
  @email = params[:email]
  @password = params[:password]
  if User.authenticate(@email, @password)
    @user = User.find_by(email: @email)
    log_in
    redirect "/users/#{@user.id}"
  else
    @error = ["Incorrect password or email"]
    erb :"/sessions/index"
  end

end