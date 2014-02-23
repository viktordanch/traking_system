class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :code
      t.string :subject
      t.text :body
      t.integer :author_id
      t.integer :programer_id

      t.timestamps
    end
  end
end
