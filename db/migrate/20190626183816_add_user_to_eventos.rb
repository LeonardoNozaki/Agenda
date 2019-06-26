class AddUserToEventos < ActiveRecord::Migration[5.2]
  def change
    add_reference :eventos, :user, foreign_key: true
  end
end
