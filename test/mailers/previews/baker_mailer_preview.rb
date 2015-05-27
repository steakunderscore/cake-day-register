# Preview all emails at http://localhost:3000/rails/mailers/baker_mailer
class BakerMailerPreview < ActionMailer::Preview
  def welcome
    BakerMailer.welcome(Baker.take)
  end

  def your_next
    BakerMailer.your_next(Baker.take)
  end

  def dont_forget
    BakerMailer.dont_forget(Baker.take)
  end

  def cake_time
    BakerMailer.cake_time
  end
end
