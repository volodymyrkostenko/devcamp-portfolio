module SocialTool
	def self.twitter_search
		client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "6XgV67aurf2URRddsX843hV01"
			config.consumer_secret     = "j8mDfXUfBGf35dvB0WkoZW6hSeGZqXxR5cpT24JU3C5YYuYMt1"
			config.access_token        = "3004125087-2ToNZVxylvdson5hYdrO5IHj9D3OMoyFjTNCY8q"
			config.access_token_secret = "zVF9aG5VpvaGmeZFIa1CjT9tu6VnnUNcyMPkYAkHWWbdb"
		end 
		client.search("#coding", result_type: 'recent').take(6).collect do |tweet|
			"#{tweet.user.screen_name}: #{tweet.text}"
		end
	end

end