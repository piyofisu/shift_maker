class Shiftpattern < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '9-18' },
    { id: 3, name: '12-21' },
    { id: 4, name: '13-22' },
    { id: 5, name: '14-23' },
    { id: 6, name: '23-8' },
    { id: 7, name: '18-3' },
    { id: 8, name: '3-12' },
    { id: 9, name: '休' },
    { id: 10, name: '希望休' },
    { id: 11, name: '有休' }
  ]

  include ActiveHash::Associations
  has_many :schedules

end