class Answer < ActiveRecord::Base
  belongs_to :poll
  validates :body, :presence => true, :length => { :maximum => 250 }
  validates_associated :poll
  attr_accessible :body
end