class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :status
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
