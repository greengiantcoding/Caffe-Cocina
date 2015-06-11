class Review < ActiveRecord::Base
	validates :author, :content, presence: true 
end
