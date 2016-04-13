class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_many :vitals, through: :visits 
  has_many :cbcs, through: :visits
  has_many :bmps, through: :visits
  has_many :ptptts, through: :visits
  has_many :dxs, through: :visits

  # NHO: would be a good idea to comment this code: i.e. why do these properties need to be serialized?
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
