class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :duration
      t.string :qualification
      t.string :institution
      t.string :city
      t.string :country
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
