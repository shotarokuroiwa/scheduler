class CreateSchedules < ActiveRecord::Migration[7.2]
  def change
    create_table :schedules do |t|
      t.string :title, null: false, limit: 20
      t.date :start_at, null: false
      t.date :end_at, null: false
      t.boolean :all_day, default: false, null: false
      t.text :memo, limit: 500
      t.timestamps
    end
  end
end
