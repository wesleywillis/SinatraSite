require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    @css_sheet = "index"
    @title = "Hailey says hi."
    erb :index
  end

  get "/index.html" do
    @css_sheet = "index"
    @title = "Hailey says hi."
    erb :index
  end

  get "/about.html" do
    @css_sheet = "about"
    @title = "About Hailey."
    erb :about
  end

  get "/blog.html" do
    @css_sheet = "blog"
    @title = "Hailey's Blog."
    erb :blog
  end

  get "/project.html" do
    @css_sheet = "projects"
    @project_list = ["?sort=FEATURED", "?sort=POPULAR", "?sort=RECENT", "category-craft", "category-workshop", "category-outside", "category-play", "category-technology", "category-costumes", "category-food"].shuffle
    @title = "Projects!"
    erb :projects
  end

end
