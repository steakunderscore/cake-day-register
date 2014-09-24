class Baker < ActiveRecord::Base
  has_one :whirl
  after_create :add_to_whirl, :welcome_email

  validates :email, confirmation: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
    uniqueness: true
  validates :email_confirmation, presence: true
  validates :name, presence: true

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def baked_cake
    self.whirl.update!(priority: new_priority)
  end

  private

  def welcome_email
    BakerMailer.welcome(self).deliver
  end

  def add_to_whirl
    Whirl.create!(priority: new_priority, baker: self)
  end


  def new_priority
    max_priority = Whirl.maximum(:priority)
    if max_priority.nil?
      new_priority = 1
    else
      new_priority = max_priority + 1
    end
    new_priority
  end

end
