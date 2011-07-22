class Semester < ActiveRecord::Base
  has_many :documents
  has_many :courses
  has_many :lecturers

end
