class Poll < ActiveRecord::Base
  attr_accessible :question, :title
 
  def create_link
  	(('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..5].join
  end
end