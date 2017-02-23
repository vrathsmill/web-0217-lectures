class UsersController < ApplicationController

  def new
    @user = User.new
  end


  get '/users' do
  @users = User.all
  erb :'/users/index'
end


  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(params)
    @user.save
    redirect to "users/#{@user.id}"
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'/users/edit'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  patch '/users/:id' do
    @user = User.find_by_id(params[:id])
    @user = User.update(params)
    redirect to "/users/#{@user.id}"
  end

  delete 'users/:id/delete' do
    @user = User.find_by_id(params[:id])
    @user.delete
    redirect to '/users'
  end



end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
