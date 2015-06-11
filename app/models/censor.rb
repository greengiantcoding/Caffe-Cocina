class Censor < ActiveRecord::Base
	validates :word, uniqueness: true;
end
