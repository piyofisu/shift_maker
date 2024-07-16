class WorkingStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '正社員' },
    { id: 3, name: '契約社員' },
    { id: 4, name: 'アルバイト' }
  ]

  include ActiveHash::Associations
  has_many :staffs

end