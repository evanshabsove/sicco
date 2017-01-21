class LocationController < ApplicationController
  def index
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to root_url
      flash[:notice] = "Email succesfully sent!"
    else
      redirect_to location_url
      flash[:notice] = "Something wen't wrong, try again."
    end

  end

  private
  def email_params
    params.require(:email).permit(:email_content, :email_address, :email_subject)
  end
end
