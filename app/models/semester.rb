class Semester < ActiveRecord::Base
  acts_as_taggable

  has_many :documents
  has_many :courses
  has_many :lecturers

end
