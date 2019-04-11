class WelcomeController < ApplicationController

	def index
  	 @contact = Contact.new
  	end

	def create
    @contact = Contact.new(contact_params)

      if @contact.save
          ContactsMailer.general_message(@contact).deliver_now
          redirect_to "/"

      else
          redirect_to "/"

      end
  end

  	private

  	 def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end
end
