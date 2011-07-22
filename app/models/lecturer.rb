class Lecturer < ActiveRecord::Base
  has_many :documents
  has_many :semesters
  has_many :courses
end
