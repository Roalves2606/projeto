class CreateMedicos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicos do |t|
      t.string :first_name
      t.string :last_name
      t.date :age
      t.string :cpf
      t.integer :salary

      t.timestamps
    end
  end
end
