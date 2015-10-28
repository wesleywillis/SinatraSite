require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/index.html" do
    erb :index
  end

  get "/about.html" do
    erb :about
  end

  get "/blog.html" do
    erb :blog
  end

  get "/project.html" do
    erb :projects
  end

end
