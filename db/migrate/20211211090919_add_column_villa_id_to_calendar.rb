class AddColumnVillaIdToCalendar < ActiveRecord::Migration[6.1]
  def change
    add_column :calendars, :villa_id, :integer
  end
end
