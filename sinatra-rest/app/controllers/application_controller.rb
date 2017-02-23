class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get('/users/new') do
    erb :new
  end

  post('/users') do
    
  end
  get '/users' do
    users = User.all
    'hello world'
    # erb(:index)

    # <html>
      # bob
      # sally
    # </html>
    # Response.new(['200', 'content/html', 'html'])
  end

  get '/foo' do
    @users = 'something else'
  end


end
