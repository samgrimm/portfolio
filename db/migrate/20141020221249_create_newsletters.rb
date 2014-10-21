class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :content1
      t.text :content2
      t.text :content3
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
