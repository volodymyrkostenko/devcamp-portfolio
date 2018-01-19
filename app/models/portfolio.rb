class Portfolio < ApplicationRecord
	friendly_id :title, use: :slugged
  	validates_presence_of :title, :body, :main_image, :thumb_image

end
