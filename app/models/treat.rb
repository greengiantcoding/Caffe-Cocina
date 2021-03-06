class Treat < ActiveRecord::Base
	has_attached_file :image, :styles => { :xtralarge => "750x750>", :large => "500x500>", :medium => "300x300>", :small => "200x200>",:thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'img/gif']
end
