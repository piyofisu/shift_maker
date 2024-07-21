class Sex < ActiveHash::Base
  self.data = [
    { id: 1, name: '女性' },
    { id: 2, name: '男性' },
  ]

  include ActiveHash::Associations
  has_many :staffs

end