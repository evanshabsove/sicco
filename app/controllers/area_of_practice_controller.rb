class AreaOfPracticeController < ApplicationController

  def index
    @areas_of_practice = Entry.where(category: "area_of_practice")
  end
end
