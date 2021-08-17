class Post < ApplicationRecord
    include Rails.application.routes.url_helpers
    has_one_attached :art

    def image_url
        rails_blob_path(self.art)
    end

end
