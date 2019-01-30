class CreateProgramRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :program_roles do |t|
      t.references :program, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
