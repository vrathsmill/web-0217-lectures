class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  get '/users' do

    users = User.all
    erb(:index)

    # <html>
      # bob
      # sally
    # </html>
    # Response.new(['200', 'content/html', 'html'])
  end

  get '/foo' do
    @users = 'something else'
  end

  # def erb(file)
  #   file = File.read(file)
  #   ERB.new(file)
  #   binding.local_variables
  #   erb.result(binding)
  # end
end


ApplicationController.new.
