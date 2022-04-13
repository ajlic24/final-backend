class CreateLanguageTable < ActiveRecord::Migration[6.1]
  def change
    create_table(:languages) do |t|
      t.column :name, :string
      t.column :description, :string
    end
  end
end
