# Preview all emails at http://localhost:3000/rails/mailers/baker_mailer
class BakerMailerPreview < ActionMailer::Preview
    def welcome
      BakerMailer.welcome(Baker.first)
    end

    def your_next
      BakerMailer.welcome(Baker.first)
    end

    def dont_forget
      BakerMailer.welcome(Baker.first)
    end

    def cake_time
    end
end
