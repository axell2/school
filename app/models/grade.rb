class Grade < ApplicationRecord
  validates :name,presence:true
  belongs_to :teacher
  has_many :student_grades
end
