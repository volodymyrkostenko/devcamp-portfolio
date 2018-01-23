module DefaultContentConcern
	extend ActiveSupport::Concern
	included do 
		before_action :set_page
	end
	def set_page
		@title = "Devcamp | My portfolio"
		@seo_keywords = "Vova"
	end

end