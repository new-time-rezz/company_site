class ContactsMailer < ActionMailer::Base
  default from: "inquiryform@rezz.com"

  
  
  def general_message(contact)
    @contact = contact
    mail( :to => "kevindevastian@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
