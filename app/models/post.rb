class Post < ApplicationRecord
    include Rails.application.routes.url_helpers
    
    has_one_attached :art
    has_one_attached :attachment

    def image_url
        url_for(self.art)
    end

    # validates :caption, presence: true
end
