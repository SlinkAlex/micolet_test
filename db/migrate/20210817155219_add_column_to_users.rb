class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :m_male, :boolean, :default => false
    add_column :users, :m_female, :boolean, :default => false
    add_column :users, :m_kids, :boolean, :default => false
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
