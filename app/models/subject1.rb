class Subject1 < ApplicationRecord
	has many:student1
	validates_presence_of :code_subject, name_subject

end
