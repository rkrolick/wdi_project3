class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vitals
  has_many :cbcs
end
