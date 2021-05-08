class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :content_block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
