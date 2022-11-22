class Collection < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  belongs_to :favemember
  belongs_to :album
  belongs_to :version

  validates :image, presence: true
  validates :favemember_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :album_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :version_id, numericality: { other_than: 1, message: "can't be blank" }
end
