class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
 
  def copyright_generator
    @copyright =  StrancViewTool::Renderer.copyright 'Logan Stranc', 'All Rights Reserved'
  end
  
  module StrancViewTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
    end
  end
end