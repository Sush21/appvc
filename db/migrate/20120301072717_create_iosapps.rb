class CreateIosapps < ActiveRecord::Migration
  def change
    create_table :iosapps do |t|
      t.string :app_id
      t.string :version
      t.string :co_name
      t.timestamps
    end
    add_index :iosapps, :app_id, :unique => true
  end
end
