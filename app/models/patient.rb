class Patient < ActiveRecord::Base
  has_many :visits
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
