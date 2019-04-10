class WelcomeController < ApplicationController

	def index
  	
  	end

	def create
  		@contact = Contact.new(contact_params)
			respond_to do |format|

			if @contact.save
			        format.html { redirect_to '/', notice: 'Message was successfully Sent.' }
			        format.json { render :index, status: :created, location: @contact }
			else
			        format.html { render :index }
			        format.json { render json: @contact.errors, status: :unprocessable_entity }
      		end
    	end
	end

  	private

  	def contact_params
      params(:contact).permit(:name, :email, :phone, :message)
    end
end
