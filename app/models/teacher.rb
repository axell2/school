class Teacher < ApplicationRecord
	validates :name,:last_name,:gender, presence: true
	has_many :grades
	
end
