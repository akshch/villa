class CreateCalendar < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.datetime :date
      t.boolean :availbility
      t.decimal :price_per_night

      t.timestamps
    end
  end
end
