class CreateEmployees < ActiveRecord::Migration
  def change
    create_table(:employees) do |e|
      e.column(:name, :varchar)
      e.column(:division_id, :int)

      e.timestamps()
    end
  end
end
