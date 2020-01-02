class AddTitleToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :title, :string
  end
end
