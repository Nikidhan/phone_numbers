class CreateNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :numbers do |t|
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :phone3

      t.timestamps
    end
  end
end
