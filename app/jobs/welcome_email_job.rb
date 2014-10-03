class WelcomeEmailJob < ActiveJob::Base
  queue_as :email

  def perform(baker)
    BakerMailer.welcome(baker).deliver_now
  end
end
