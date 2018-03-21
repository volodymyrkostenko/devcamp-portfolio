module ApplicationHelper
	def login_helper style
		unless current_user.is_a?(GuestUser)
  			link_to "Log out", destroy_user_session_path, method: :delete, class: style
  		else
  			(link_to "Register",  new_user_registration_path, class: style)+
  			
	  		(link_to "Login", new_user_session_path, class: style)
	  		
  		end

	end
	def source_helper(layout_name)
		if session[:source]
		  greeting  = " Thank for visiting me on #{session[:source]} and you are on #{layout_name} page"
	      content_tag(:p, greeting, class: 'My-class')
	    end
    
	end
	def copyright_generator
		DevcampViewTool::Render.copyright 'Vova', 'All right reserved'
	end
	def nav_items
		[ 	
			{
				url: root_path,
				title: "Home"
			},
			{

				url: about_path,
				title: "About"
			},

			{
				url: contact_path,
				title: "Contact"
			},

			{
				url: blogs_path,
				title: "Blog"
			},
			{
				url: portfolios_path,
				title: "Portfolio"
			},
			{   
				url: tech_news_path,
				title: 'Code News'
			}	




		]
	end

	def nav_helper style, tag_type
		nav_links=" "

		nav_items.each  do |item|
			
			nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"		
		end
		nav_links.html_safe
	end

	def active?  path
		'active' if current_page? path
	end

	def alert
		if flash[:notice]
			alert_generation(flash[:notice])
		end
	end


	def alert_generation(msg)
		js add_gritter(msg, title:"#{current_user.name}", sticky: false, time: 2000)
	end
end
