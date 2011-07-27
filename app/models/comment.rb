class Comment < ActiveRecord::Base
  validates_presence_of :document_id, :on => :create, :message => "can't be blank"
    validates_presence_of :user_id, :on => :create, :message => "can't be blank"
  validates_presence_of :text, :on => :create, :message => "can't be blank"

  belongs_to :document
  belongs_to :user
end
