class Lecturer < ActiveRecord::Base
  acts_as_taggable

  has_many :documents
  has_many :semesters
  has_many :courses
end
