class UnhealthyThoughtType < ActiveRecord::Base
  include DropdownDisplay

  has_many :records
end
