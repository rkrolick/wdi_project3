class Patient < ActiveRecord::Base
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
