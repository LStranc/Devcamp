module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
     before_filter :set_title
  end
  
  def set_title
    @page_title = "Devcamp Portfolio | My Portfolio Website"
    @seo_keywords = "Logan Stranc Portfolio"
  end
end  