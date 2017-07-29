module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_title
    @page_title = "Unlabelled Designs"
    @seo_keywords = "Lockie Royall Design"
  end
end