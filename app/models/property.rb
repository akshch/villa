class Property < ActiveRecord::Base
  self.table_name = 'villas'
  GST = 18
  has_many :calendars, foreign_key: :villa_id
end
