class Story < ActiveRecord::Base
	validates(:body, {
		:presence => true, 
		:length => {:maximum => 250}
		})
	validates(:title, {:presence => true})
end