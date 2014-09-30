class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title

      t.timestamps
    end

    add_column :reviews, :book_id, :integer
  end
end
