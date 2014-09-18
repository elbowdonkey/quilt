class Layer < ActiveRecord::Base
  belongs_to :patch
  has_many :pixels
end

class First < Layer
end
