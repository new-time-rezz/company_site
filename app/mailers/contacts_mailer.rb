class ContactsMailer < ActionMailer::Base

  default from: "inquiry@newtimerezz.com"

  
  
  def general_message(contact)
    @contact = contact
    make_bootstrap_mail( to: "kevindevastian@gmail.com", subject:  "You have a message from a  new Client !!", from: "inquiry@newtimerezz.com", )
  end
end
