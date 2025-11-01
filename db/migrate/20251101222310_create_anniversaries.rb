class CreateAnniversaries < ActiveRecord::Migration[8.0]
  def change
    create_table :anniversaries do |t|
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
