class CreatePunches < ActiveRecord::Migration[5.0]
  def change
    create_table :punches do |t|
      t.text :accomplished
      t.datetime :start_time
      t.datetime :end_time
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
