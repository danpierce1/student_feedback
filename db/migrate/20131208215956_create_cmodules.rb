class CreateCmodules < ActiveRecord::Migration
  def change
    create_table :cmodules do |t|
      t.string :name

      t.timestamps
    end
  end
end
