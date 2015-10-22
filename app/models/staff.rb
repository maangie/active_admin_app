class Staff < ActiveRecord::Base
  validates :code, presence: true
end
