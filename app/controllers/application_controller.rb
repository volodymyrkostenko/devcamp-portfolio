class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelistConcern
  include SetSourceConcern
  include CurrentUserConcern
  include DefaultContentConcern
 

 
end
module DevcampViewTool
  class Render
    def self.copyright name, msg
       "&copy; #{Time.now.year} | <b> #{name} #{msg}".html_safe
    end
  end
end
