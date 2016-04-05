class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vitals
end
