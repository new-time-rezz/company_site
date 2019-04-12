class ContactsMailer < ActionMailer::Base

  default from: "inquiry@newtimerezz.com"

  
  
  def general_message(contact)
    @contact = contact
    recipients = ["kevindevastian@gmail.com"," emir.shafiq@yahoo.com", 	"nurulhashidi@gmail.com" ]
    make_bootstrap_mail( to: recipients, subject:  "You have a message from a  #{@contact.name} !!", from: "inquiry@newtimerezz.com", )
  end
end
