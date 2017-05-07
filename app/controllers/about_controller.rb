class AboutController < ApplicationController
  def index
    @entry = Entry.where(category: "about")
  end
end
