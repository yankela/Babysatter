class AddSatScoreToBabysitter < ActiveRecord::Migration[5.0]
  def change
    add_column :babysitters, :sat_score, :integer
  end
end
