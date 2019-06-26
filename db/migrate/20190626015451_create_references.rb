class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :high
      t.string :school
      t.string :date1
      t.string :college
      t.string :major
      t.string :date2
      t.string :reference1
      t.string :ref1_addr
      t.string :ref1_phone
      t.string :reference2
      t.string :ref2_addr
      t.string :ref2_phone
      t.string :reference3
      t.string :ref3_addr
      t.string :ref3_phone
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
