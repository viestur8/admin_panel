class Cohort < ApplicationRecord
  has_many :students
  belongs_to :teacher
  belongs_to :course
end
