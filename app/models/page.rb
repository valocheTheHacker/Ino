class Page < MailForm::Base
    attribute :name, validate: true
    attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
    attribute :message
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        subject: "CONNECT+ CLIENT!!! 💸💸💸",
        to: "valentinkizelev@gmail.com",
        from: %("#{name}" <#{email}>)
      }
    end
  end