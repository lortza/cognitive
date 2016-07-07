class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.text :event
      t.text :thought_about_event
      t.text :feeling_about_thought
      t.text :unhealthy_action
      t.references :unhealthy_thought_type, index: true, foreign_key: true
      t.references :healthy_thought_type, index: true, foreign_key: true
      t.text :reframe_statement
      t.text :healthy_action
      t.boolean :star, :default => false

      t.timestamps null: false
    end
  end
end
