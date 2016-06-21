class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :fact
      t.string :awereness
      t.string :quote
      t.string :goal

      t.timestamps null: false
    end
  end
end
