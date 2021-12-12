class Calendar < ActiveRecord::Base
  belongs_to :property, foreign_key: :villa_id
end
