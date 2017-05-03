class EntriesController < ApplicationController

  def create
    entry = Entry.new(entry_params)
    if entry.save
      redirect_to dashboard_index_url
    end
  end


  private

  def entry_params
    params.require(:entry).permit(:title, :description, :category)
  end
end
