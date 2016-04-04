class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
