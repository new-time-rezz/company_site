class ContactsMailer < ActionMailer::Base
	require 'sendgrid-ruby'
	include SendGrid

  default from: "newtimerezz@gmail.com"

  
  
  def general_message(contact)
    @contact = contact
    mail( :to => "kevindevastian@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
