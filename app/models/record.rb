class Record < ActiveRecord::Base
  belongs_to :unhealthy_thought_type
  belongs_to :healthy_thought_type
  belongs_to :user
end
