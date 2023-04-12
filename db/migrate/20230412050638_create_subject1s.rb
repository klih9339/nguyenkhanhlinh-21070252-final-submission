class CreateSubject1s < ActiveRecord::Migration[7.0]
  def change
    create_table :subject1s do |t|
      t.string :name_subject
      t.string :code_subject
      t.integer :credit
      t.integer :place

      t.timestamps
    end
  end
end
