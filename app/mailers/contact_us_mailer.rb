class ContactUsMailer < ApplicationMailer
    def contact_us(email)
        @email = email
        mail to: "donga@nie.pl", from: @email.sender_email, subject: @email.subject
    end
end
