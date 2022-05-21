class StudentGrade < ApplicationRecord
  validates :seccion,presence: true
  belongs_to :student
  belongs_to :grade
end
