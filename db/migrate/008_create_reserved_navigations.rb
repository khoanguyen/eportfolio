class CreateReservedNavigations < Sequel::Migration
  def up
    create_table :reserved_navigations do
      String :navigation_key, :size => 30, :primary_key => true 
      String :description
    end
  end

  def down
    drop_table :reserved_navigations
  end
end
