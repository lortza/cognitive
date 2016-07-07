class CreateUnhealthyThoughtTypes < ActiveRecord::Migration
  def change
    create_table :unhealthy_thought_types do |t|
      t.string :name
      t.string :explanation
      t.text :example

      t.timestamps null: false
    end
  end
end
