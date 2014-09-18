class Artist < ActiveRecord::Base
  has_many :pixels
  has_many :frames
  has_many :patches

end

class Quilbot < Artist
end
