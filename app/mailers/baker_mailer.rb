class BakerMailer < ActionMailer::Base
  default to: proc { Baker.pluck(:email) },
          from: 'no-reply@cake.camp',
          return_path: 'cake@cake.camp'

  def welcome(baker)
    @baker = baker
    mail(to: @baker.email, subject: 'Welcome to Cake Day!')
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
