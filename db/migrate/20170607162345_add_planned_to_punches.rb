class AddPlannedToPunches < ActiveRecord::Migration[5.0]
  def change
    add_column :punches, :planned, :text
  end
end
