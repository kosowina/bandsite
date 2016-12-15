class ContactUsController < ApplicationController
  def new
     @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email
      @email.send_contact_us_email
      flash[:info] = "E-mail został wysłany"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private
    def email_params
      params.require(:email).permit(:sender_email, :subject, :content)
    end
end
