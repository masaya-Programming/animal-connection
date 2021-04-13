class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: "---" }, { id: 1, name: "動物園" }, { id: 2, name: "水族館" }
  ]
end
