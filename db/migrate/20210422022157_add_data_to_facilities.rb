class AddDataToFacilities < ActiveRecord::Migration[6.0]
  def change
    change_column :facilities, :region_id, :integer, null: false
    add_column :facilities, :hiraname, :string, null: false
    add_column :facilities, :business_data, :text
    add_column :facilities, :closed_data, :text 
    add_column :facilities, :animal_data, :text
    add_column :facilities, :attention_point, :text
  end
end
