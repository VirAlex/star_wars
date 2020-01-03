class AddSynopsisToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :synopsys, :string
    add_column :consultations, :datesortie, :date
  end
end
