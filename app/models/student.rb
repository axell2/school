class Student < ApplicationRecord
  validates :name,:last_name,:gender,:date_of_birth, presence: true
  has_many :student_grades
  
end
