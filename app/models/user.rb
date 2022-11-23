class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :collections
  has_many :trades
  belongs_to :favemember

  validates :nickname, presence: true
  validates :profile, presence: true
  # ジャンル選択が「ーーー」の時は保存できないようにする
  validates :favemember_id, numericality: { other_than: 1, message: "can't be blank" }

end
