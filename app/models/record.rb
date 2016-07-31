class Record < ActiveRecord::Base
  belongs_to :unhealthy_thought_type
  belongs_to :healthy_thought_type
  belongs_to :user

  validates :date, :event, :thought_about_event, :feeling_about_thought, :unhealthy_action, :unhealthy_thought_type_id, :healthy_thought_type_id, :reframe_statement, :healthy_action, presence: true


  #method to list top five most used negative thought types and get their name and  provide a usage count
  def self.unhealthy_thought_type_counter
     # used_unhealthy_thought_types_query = "SELECT unhealthy_thought_types.name AS unhealthy_thought, COUNT(*) FROM records r, LEFT JOIN unhealthy_thought_types u ON unhealthy_thought_types.id = records.unhealthy_thought_type_id GROUP BY unhealthy_thought LIMIT '5'"
# used_unhealthy_thought_types_query
  $zorro = 1
    Record.find_by_sql(["
      SELECT r.unhealthy_thought_type_id, t.name
      FROM records r
      JOIN unhealthy_thought_types t ON t.id = r.unhealthy_thought_type_id
      JOIN users u ON u.id = r.user_id
      WHERE r.user_id = $zorro
      GROUP BY r.unhealthy_thought_type_id, t.name
      "])

  end #thought_type_counter

  # def counter(record_id)
  #   jbjkhf 
  # end #counter(record_id)

end

# Record.find_by_sql(["SELECT * FROM (#{used_unhealthy_thought_types_query}) as all_unhealthy_thought_types"])
# SELECT unhealthy_thought_types.name AS unhealthy_thought, COUNT(*) FROM records r,
# LEFT JOIN unhealthy_thought_types u ON unhealthy_thought_types.id = records.unhealthy_thought_type_id
# GROUP BY unhealthy_thought;