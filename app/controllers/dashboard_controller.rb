class DashboardController < ApplicationController

  before_filter :check_admin

  def index
    @about = Entry.where(category: "about")
    @areas_of_practice = Entry.where(category: "area_of_practice")
    @testimonials = Entry.where(category: "testimonial")
    @contact = Entry.where(category: "contact")
    @home_pages = Entry.where(category: "home-page")
  end


  def handle_request
    if params[:method] == "edit"
      @entry = Entry.find_by_id(params[:id])
      respond_to do |format|
        format.html
        format.json { render json: {:success => true, html: (render_to_string('_edit-modal.html.erb',object: @entry, layout: false))} }
      end
    else
      @entry = Entry.new
      @entry.category = params[:category]
      respond_to do |format|
        format.html
        format.json { render json: {:success => true, html: (render_to_string('_popup-modal.html.erb',object: @entry, layout: false))} }
      end
    end
  end

  private
  def check_admin
    if current_user
      unless current_user.admin
        redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

end
