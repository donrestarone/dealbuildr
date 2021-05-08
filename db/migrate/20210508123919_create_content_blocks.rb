class CreateContentBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :content_blocks do |t|
      t.references :document, null: false, foreign_key: true

      t.timestamps
    end
  end
end
