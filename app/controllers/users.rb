get '/users' do
  "Hi, you don't need me right now!"
end

post '/users' do

end

get '/users/new' do
  erb :'users/new'
end

