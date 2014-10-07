class CreateTraxes < ActiveRecord::Migration
  def change
    create_table :traxes do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end
end
