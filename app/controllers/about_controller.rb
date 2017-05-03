class AboutController < ApplicationController
  def index
    @entry = Entry.first
  end
end
