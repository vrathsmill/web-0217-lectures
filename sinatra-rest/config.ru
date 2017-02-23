require_relative './config/environment'

# server listens for requests
# we need to pass the request to part of my application
# the relevant part of my application, says what to do
run ApplicationController


# ApplicationController.new.call(env)

# ApplicationController < Sinatra::Base
    # get('/users') do
      # @users = 'hello'
      # erb(:index)
      # [200, 'content/html', 'html....']
  # end
# end

# <html>
#   <%= @users %>
# </html>
#
# <html>
#   hello
# </html
#
#
# # def erb(file)
# # file = File.read(file)
# # template = ERB.new(file)
#   # template.result(binding)
# # end
