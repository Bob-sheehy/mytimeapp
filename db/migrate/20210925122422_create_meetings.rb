class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :duration
      t.integer :overtime

      t.timestamps
    end
  end
end
