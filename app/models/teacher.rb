class Teacher < ApplicationRecord
  enum highest_edu: [:highschool, :college, :masters, :phd]
  has_many :cohorts
end
