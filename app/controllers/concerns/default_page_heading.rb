module DefaultPageHeading
    extend ActiveSupport::Concern

    included do
    before_action :set_title
    end

    def set_title
        @page_title = "MyWine | WIne lovers Paradise"
    end
end