class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.string :birthdate
      t.string :sex
      t.boolean :married
      t.string :occupation
      t.string :employer
      t.string :years_in_state
      t.string :months_in_state
      t.string :emergency_contact
      t.string :relationship
      t.string :emer_phone
      t.string :shirt_size
      t.boolean :cpr
      t.boolean :first_aid
      t.boolean :life_guard
      t.boolean :nurse
      t.boolean :emt
      t.boolean :have_worked_with_abused
      t.string :describe_work_with_abused
      t.boolean :was_victim
      t.boolean :discuss_abuse
      t.string :clarify
      t.string :why_you_want_to_counsel
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
