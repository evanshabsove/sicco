class UserNotifierMailer < ApplicationMailer
  default :from => 'pierresiccoweb@example.com'

  def send_signup_email(emails)
    @email = emails
    mail( :to => ENV['email_address'] , :subject => @email.email_subject)
  end
end
