class Pixel < ActiveRecord::Base
  belongs_to :layer
  belongs_to :artist
end
