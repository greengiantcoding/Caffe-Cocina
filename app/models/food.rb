class Food < ActiveRecord::Base
	has_attached_file :image, :styles => { :xlarge => '750x750', :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'img/gif']

	validates :title, :description, :category, :price_label, :price, :alt_price_label, :alt_price, :lunch_category, presence: true

end
