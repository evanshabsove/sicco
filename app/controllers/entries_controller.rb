class EntriesController < ApplicationController

  def create
    entry = Entry.new(entry_params)
    if entry.save
      redirect_to dashboard_index_url
    end
  end

  def destroy
    entry = Entry.find_by_id(params[:id])
    entry.destroy!
    redirect_to dashboard_index_url
  end


  private

  def entry_params
    params.require(:entry).permit(:title, :description, :category)
  end
end
