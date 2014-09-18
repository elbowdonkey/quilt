class Patch < ActiveRecord::Base
  belongs_to :frame
  belongs_to :artist
  has_many :layers

end
