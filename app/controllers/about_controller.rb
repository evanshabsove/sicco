class AboutController < ApplicationController
  def index
    @entries = Entry.where(category: "about")
  end
end
