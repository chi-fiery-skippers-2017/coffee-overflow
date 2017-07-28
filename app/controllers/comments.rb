get '/comments/new' do
  erb :'comments/_new_comment'
end

post '/comments' do
  erb :'comments/_new_comment', layout: false
end





