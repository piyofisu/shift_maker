class Shiftpattern < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '9-18' },
    { id: 3, name: '13-22' },
    { id: 4, name: '14-23' },
    { id: 5, name: '23-8' },
    { id: 6, name: '18-3' },
    { id: 7, name: '3-12' },
    { id: 8, name: '休' },
    { id: 9, name: '希望休' },
    { id: 10, name: '有休' }
  ]

  include ActiveHash::Associations
  has_many :schedules

end