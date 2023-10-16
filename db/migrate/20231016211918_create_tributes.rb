class CreateTributes < ActiveRecord::Migration[7.0]
  def change
    create_table :tributes do |t|
      t.string :name
      t.integer :age
      t.text :hobby
      t.text :image
      t.string :district

      t.timestamps
    end
  end
end
