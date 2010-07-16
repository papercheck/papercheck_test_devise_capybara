class CreateBeers < ActiveRecord::Migration
  def self.up
    create_table :beers do |t|
      t.string :brewer
      t.string :beer_name
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :beers
  end
end
