class LocationController < ApplicationController
  def index
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      UserNotifierMailer.send_signup_email(@email).deliver
      redirect_to thank_you_index_path
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
