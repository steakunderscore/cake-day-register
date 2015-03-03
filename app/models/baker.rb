class Baker < ActiveRecord::Base
  has_many :cake_days

  has_one :whirl

  after_create :add_to_whirl

  validates :email, confirmation: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
    uniqueness: true
  validates :email_confirmation, presence: true
  validates :name, presence: true

  def baked_cake
    self.whirl.update!(priority: new_priority)
  end

  private

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
