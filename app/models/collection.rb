class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :album_id
  belongs_to :version_id
  has_one_attached :image

  

end
