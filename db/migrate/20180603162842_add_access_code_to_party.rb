class AddAccessCodeToParty < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :access_code, :string
  end
end
