# dashboard/app/controllers/home_controller.rb
class HomeController < ApplicationController
    def index
      @posts = RecentPosts.list
    end
end
