class Collection < ApplicationRecord
  belongs_to :user
  has_one :trade
  belongs_to :album_id
  belongs_to :version_id
end
