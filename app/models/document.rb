class Document < ActiveRecord::Base
  #attr_accessible :filename
  validates_presence_of :caption, :on => :create, :message => "can't be blank"
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_presence_of :file_path, :on => :create, :message => "no file found"
  validates_presence_of :user_id, :on => :create, :message => "no user found"


  belongs_to :user, :foreign_key => :user_id
  has_one :lecturer
  has_one :course
  has_one :semester
  has_many :comments
  mount_uploader :file_path, BinfileUploader
  end