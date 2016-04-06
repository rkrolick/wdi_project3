class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vitals
  has_many :cbcs
  has_many :bmps
  has_many :ptptts
  has_many :dxs
  has_many :rxs
end
