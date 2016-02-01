class CreateHolds < ActiveRecord::Migration
  def change
    create_table :holds, :id => false do |t|
      t.primary_key :pkg_id
      t.integer :sto_id
    end
  end
end
