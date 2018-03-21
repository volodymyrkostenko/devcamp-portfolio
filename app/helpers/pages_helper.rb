module PagesHelper
	def twitter_parser tweet


		re = /(?:(?:https?|ftp|file):\/\/|www\.|ftp\.)(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[-A-Z0-9+&@#\/%=~_|$?!:,.])*(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[A-Z0-9+&@#\/%=~_|$])/im
	
		tweet.gsub(re) do |url|
			"<a href=#{url} target ='_blank'>#{url}<a>"
		end.html_safe 

	end
end
