class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
    	t.string      :name
        t.text        :text
        t.text        :image
        t.timestamps null: true
    end
  end
end
