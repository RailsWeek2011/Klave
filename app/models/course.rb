class Course < ActiveRecord::Base
  has_many :documents
  has_many :semesters
  has_many :lecturers

end
