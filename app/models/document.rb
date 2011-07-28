class Document < ActiveRecord::Base

  acts_as_taggable
  #attr_accessible :filename
  validates_presence_of :caption, :on => :create, :message => "can't be blank"
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_presence_of :file_path, :on => :create, :message => "can't be blank"
  validates_presence_of :user_id, :on => :create, :message => "can't be blank"
  validates_presence_of :lecturer_id, :on => :create, :message => "can't be blank"
  validates_presence_of :course_id, :on => :create, :message => "can't be blank"
  validates_presence_of :semester_id, :on => :create, :message => "can't be blank"


  belongs_to :user, :foreign_key => :user_id
  belongs_to :lecturer
  belongs_to :course
  belongs_to :semester
  has_many :comments, :dependent => :destroy
  mount_uploader :file_path, BinfileUploader

  before_save :set_file_info


  def set_file_info

    self.file_name= params[:document][:file_path].original_filename
    self.file_type= params[:document][:file_path].content_type
    self.tag_list = self.course.name, self.lecturer.name, self.semester.name, self.user.name

  end

  def self.filter(params = {})
    condition = {}
    condition[:semester_id] = params[:semester][:semester_id] if params[:semester] && params[:semester][:semester_id]


    condition[:course_id] = params[:course][:course_id] if params[:course] && params[:course][:course_id]
    condition[:lecturer_id] = params[:lecturer][:lecturer_id] if params[:lecturer] && params[:lecturer][:lecturer_id]

    where condition
  end

end