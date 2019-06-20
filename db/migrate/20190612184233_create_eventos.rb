class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :desc
      t.datetime :data

      t.timestamps
    end
  end
end
