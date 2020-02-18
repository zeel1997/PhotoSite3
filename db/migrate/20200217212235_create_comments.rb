class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.column :date_time, :date
      t.column :comment_text, :string
      t.timestamps
    end
  end
end