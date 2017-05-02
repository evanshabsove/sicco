class AboutController < ApplicationController
  def index
    @entries = Entry.where(type: "about")
  end
end
