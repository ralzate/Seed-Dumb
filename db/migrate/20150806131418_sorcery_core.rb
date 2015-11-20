class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :email,            :null => false
      t.string   :names
      t.string   :surnames
      t.integer  :type_document
      t.string   :document
      t.string   :medical_record
      t.integer  :rol_id
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end