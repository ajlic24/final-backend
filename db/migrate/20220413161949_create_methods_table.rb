class CreateMethodsTable < ActiveRecord::Migration[6.1]
  def change
    create_table(:commands) do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :language_id, :integer
    end
  end
end
