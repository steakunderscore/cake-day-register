##
# This represents a baker who has or will bake on a given date.
class CakeDay < ActiveRecord::Base
  belongs_to :baker
end
