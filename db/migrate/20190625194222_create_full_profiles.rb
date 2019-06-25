class CreateFullProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :full_profiles do |t|
      t.boolean :commited_to_christ
      t.string :where_when
      t.string :church
      t.string :how_long
      t.string :pastors_name
      t.string :church_phone
      t.boolean :worked_with_children
      t.string :describe
      t.boolean :worked_with_abused
      t.string :describe
      t.boolean :can_lead_devotion
      t.string :description_of_you
      t.string :strengths
      t.string :weaknesses
      t.string :preferred_age
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
