class Contact < MailForm::Base
    attribute :name, validates: true
    attribute :email, validates: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :message
    #if we receive this nickname we will no its from a bot
    attribute :nickname, captcha: true
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
  
    def headers
      {
        :subject => "Contact Form Inquiry",
        :to => "jchepyego@gmail.com",
        :from => %("#{name}" <#{email}>)
      }
    end
  end