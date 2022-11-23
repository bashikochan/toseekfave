class Type < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '同種' },
    { id: 3, name: '異種' }
  ]

  include ActiveHash::Associations
  has_many :trades