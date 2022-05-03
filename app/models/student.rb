class Student < ApplicationRecord
  has_many :capstones
  has_many :educations
end
