class Album < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Mixtape' },
    { id: 3, name: 'I am NOT' },
    { id: 4, name: 'I am WHO' },
    { id: 5, name: 'I am YOU' },
    { id: 6, name: 'Clé1 : MIROH' },
    { id: 7, name: 'Clé 2 : Yellow Wood' },
    { id: 8, name: 'Clé: LEVANTER' },
    { id: 9, name: 'SKZ2020' },
    { id: 10, name: 'TOP -Japanese ver.-' },
    { id: 11, name: 'GO生 (GO LIVE)' },
    { id: 12, name: 'IN生 (IN LIFE)' },    
    { id: 13, name: 'ALL IN' },
    { id: 14, name: 'NOEASY' },
    { id: 15, name: 'Scars/ソリクン-Japanese ver.-' },
    { id: 16, name: 'Christmas EveL' },
    { id: 17, name: 'ODDINARY' },
    { id: 18, name: 'CIRCUS' },
    { id: 19, name: 'MAXIDENT' }
  ]

  include ActiveHash::Associations
  has_many :collections
end