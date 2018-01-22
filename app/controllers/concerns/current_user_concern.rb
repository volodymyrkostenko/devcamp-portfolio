module CurrentUserConcern
	extend ActiveSupport::Concern
	
	def current_user
 		super || quest_user
	end
 	def quest_user
 		OpenStruct.new(
 					   name: "Guest User", 
 					   first_name: "Guest", 
 					   last_name: "User", 
 					   email: "quest@gexample.com"
 					   )
 	end
end