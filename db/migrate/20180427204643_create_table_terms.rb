class CreateTableTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.column :name, :string
      t.column :blurb, :string
      t.column :explanation, :string
    end
  end
end
