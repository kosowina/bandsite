class Email < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :sender_email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
    validates :subject, presence: true, length: { maximum: 50 } 
    validates :content, presence: true, length: { maximum: 555 }
    
    def send_contact_us_email
        ContactUsMailer.contact_us(self).deliver_now
    end
end
