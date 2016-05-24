require 'sinatra'
configure { set :server, :puma }
configure { set :bind, '0.0.0.0'}

get '/' do
  "Hello World!"
end
