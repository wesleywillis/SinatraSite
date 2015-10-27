require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    "Hello World"
  end
end
