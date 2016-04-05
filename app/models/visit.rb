class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vitals
  has_many :cbcs
  has_many :bmps
  has_many :ptptts
end
