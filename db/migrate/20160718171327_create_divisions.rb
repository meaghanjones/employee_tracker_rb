class CreateDivisions < ActiveRecord::Migration
  def change
    create_table(:divisions) do |d|
      d.column(:name, :varchar)

      d.timestamps()
    end
  end
end
