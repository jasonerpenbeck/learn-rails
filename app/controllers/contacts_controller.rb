class ContactsController < ApplicationController

#Creating an object in case I want something pre-populated on arrival to this page.  Also, could be here in case of an error on the first attempt to sign up.
  def new
    @contact = Contact.new
  end

# Create Method is Called when the form is submitted
  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      @contact.spreadsheet
      UserMailer.contact_email(@contact).deliver
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end