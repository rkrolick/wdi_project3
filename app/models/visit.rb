class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vitals, dependent: :destroy
  has_many :cbcs, dependent: :destroy
  has_many :bmps, dependent: :destroy
  has_many :ptptts, dependent: :destroy
  has_many :dxs, dependent: :destroy
  has_many :rxs, dependent: :destroy
end
