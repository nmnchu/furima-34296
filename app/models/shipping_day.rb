class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1~2日で発送' },
    { id: 3, name: '２〜3日で発送' },
    { id: 4, name: '４〜７日で発送' },
  ]
  end