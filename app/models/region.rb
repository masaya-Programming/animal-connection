class Region < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' }, { id: 1, name: '北海道・東北' }, { id: 2, name: '関東' }, { id: 3, name: '中部' },
    { id: 4, name: '近畿' }, { id: 5, name: '中国・四国' }, { id: 6, name: '九州・沖縄' }
  ]
end
