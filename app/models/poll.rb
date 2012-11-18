class Poll < ActiveRecord::Base
  attr_accessible :question, :title, :encrypted_link
 	has_many :answers
 	validates_presence_of :title, :question
 	before_create :encrypt_link

  def format_url
  	(('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..5].join
  end

  def encrypt_link
  	self.encrypted_link = format_url
  end
end