class CreateProgramCycles < ActiveRecord::Migration[5.1]
  def change
    create_table :program_cycles do |t|
      t.references :program, foreign_key: true
      t.string :name
      t.text :description
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end
