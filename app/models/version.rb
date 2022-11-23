class Version < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'JYP SHOP' },
    { id: 3, name: 'YES24' },
    { id: 4, name: 'ALADIN' },
    { id: 5, name: 'MUSICKOREA' },
    { id: 6, name: 'WITHMUU(withdrama)' },
    { id: 7, name: 'BDM' },
    { id: 8, name: 'Ktown4u' },
    { id: 9, name: 'APPLEMUSIC' },
    { id: 10, name: 'MUSICPLANT' },
    { id: 11, name: 'SOUNDWAVE' },
    { id: 12, name: 'MAKESTAR' },    
    { id: 13, name: 'Target' },
    { id: 14, name: 'シンナラ' },
    { id: 15, name: 'インターパーク' },
    { id: 16, name: 'StrayKids SHOP' },
    { id: 17, name: 'hottracks' },
    { id: 18, name: 'lotte' },
    { id: 19, name: 'shopee' },
    { id: 20, name: 'タワレコ' },
    { id: 21, name: 'ソニミュ' },
    { id: 22, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :collections
end