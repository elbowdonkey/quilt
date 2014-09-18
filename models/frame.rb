class Frame < ActiveRecord::Base
  belongs_to :artist
  has_many :patches

  serialize :rules
end
