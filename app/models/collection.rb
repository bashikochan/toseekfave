class Collection < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :album_id
  belongs_to :version_id
end
