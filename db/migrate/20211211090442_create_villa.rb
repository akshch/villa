class CreateVilla < ActiveRecord::Migration[6.1]
  def change
    create_table :villas do |t|
      t.string :name
      t.timestamps
    end
  end
end
