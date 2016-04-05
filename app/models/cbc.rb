class Cbc < ActiveRecord::Base
  belongs_to: :patient
  belongs_to: :visit
end
