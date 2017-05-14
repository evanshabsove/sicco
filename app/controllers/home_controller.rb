class HomeController < ApplicationController
  def index
    @entry = Entry.find_by(category: "home-page")
  end
end
