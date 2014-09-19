class Baker < ActiveRecord::Base
  has_one :whirl
  after_create :add_to_whirl

  def add_to_whirl
    Whirl.create(priority: new_priority, baker: self)
  end

  def baked_cake
    self.whirl.update(priority: new_priority)
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
