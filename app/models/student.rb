class Student < ApplicationRecord
  has_many :skills
  has_many :capstones
  has_many :educations
  has_many :experiences
  belongs_to :user
  validates :email, presence: true, uniqueness: true
  validates :user_id, uniqueness: true
end
