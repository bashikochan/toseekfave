class Favemember < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'バンチャン' },
    { id: 3, name: 'リノ' },
    { id: 4, name: 'チャンビン' },
    { id: 5, name: 'ヒョンジン' },
    { id: 6, name: 'ハン' },
    { id: 7, name: 'フィリックス' },
    { id: 8, name: 'スンミン' },
    { id: 9, name: 'アイエン' }
  ]

  include ActiveHash::Associations
  has_many :users
  has_many :collections
end