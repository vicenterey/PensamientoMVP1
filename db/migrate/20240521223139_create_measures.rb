class CreateMeasures < ActiveRecord::Migration[7.1]
  def change
    create_table :measures do |t|
      t.string :full_name
      t.integer :age
      t.decimal :height
      t.decimal :chest
      t.decimal :hip
      t.decimal :waist
      t.decimal :arm
      t.decimal :tlength
      t.decimal :inseam
      t.decimal :leglength
      t.decimal :thighwidth
      t.decimal :backwidth

      t.timestamps
    end
  end
end
