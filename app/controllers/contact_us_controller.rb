class ContactUsController < ApplicationController
  def new
  end

  def create
    @email = Contact.new(email_params)
    if @email
      @email.send_contact_us_email
      flash[:info] = "E-mail został wysłany"
      redirect_to root_url
    else
      flash[:danger] = "Wypełnij wszystkie pola"
      redirect_to root_url
    end
  end
  
  private
    def email_params
      params.require(:email).permit(:email, :subject, :content)
    end
end
