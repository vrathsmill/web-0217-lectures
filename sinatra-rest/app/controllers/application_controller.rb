class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get('/users/new') do
    erb :new
  end

  post('/users') do
    # <input type="text" name="bob">
    # params = {name: 'asjaskj', hometown: 'philly'}
    # name=(alkjaskj)
    # hometown=(philly)
    # params = {}
    @user = User.create(params)
    erb(:show)
    # redirect "/users/#{@user.id}"
    # {name: 'bob', hometown: 'philly'}
    # user.name =
    # user.hasijsakljaksl =
    # user = User.new
    # user.name = params[:name]
    # user.hometown = params[:hometown]
    # user.save
    # User.create(params)
    # {name: 'bob', hometown: 'philly'}
      # user.name=('bob')
      # user.hometown=('philly')
  end

  get '/users' do
    erb(:index)
  end

  get '/users/:id' do
    binding.pry
    @user = User.find(params[:id])
    erb(:show)
  end

  get '/users/:id/edit' do
    binding.pry
    @user = User.find(params[:id])
    erb(:show)
  end
end


# fill_in 'name', with: 'bob'
