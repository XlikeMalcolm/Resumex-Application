class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profession
      t.text :about
      t.string :profile_pic
      t.string :signature
      t.string :street
      t.string :city
      t.string :province
      t.string :posatl_code
      t.string :email
      t.string :telephone
      t.string :cellphone

      t.timestamps
    end
  end
end
