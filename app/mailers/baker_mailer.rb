class BakerMailer < ActionMailer::Base
  default to: -> { Baker.pluck(:email) }
  default from: "from@example.com"

  def welcome(baker)
    @baker = baker
    mail(to: @baker.email, subject: 'Welcome to the cake register!')
  end

  def your_next(baker)
    @baker = baker
    mail(to: @baker.email, subject: 'Get ready to bake!')
  end

  def dont_forget(baker)
    @baker = baker
    mail(to: @baker.email, subject: "Don't Forget your cake!")
  end

  def cake_time
    mail(subject: 'Cake Time!')
  end
end
