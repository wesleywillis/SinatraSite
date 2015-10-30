require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    @css_sheet = "index"
    erb :index
  end

  get "/index.html" do
    @css_sheet = "index"
    erb :index
  end

  get "/about.html" do
    @css_sheet = "about"
    erb :about
  end

  get "/blog.html" do
    @css_sheet = "blog"
    erb :blog
  end

  get "/project.html" do
    @css_sheet = "projects"
    @project_list = ["?sort=FEATURED", "?sort=POPULAR", "?sort=RECENT", "category-craft", "category-workshop", "category-outside", "category-play", "category-technology", "category-costumes", "category-food"].shuffle

    erb :projects
  end

end
