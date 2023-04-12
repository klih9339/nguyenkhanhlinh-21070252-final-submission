class Student1 < ApplicationRecord
	has many:subject1
	validates_presence_of :code_subject

end
