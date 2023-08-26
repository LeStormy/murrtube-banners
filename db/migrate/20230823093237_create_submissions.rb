class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions, id: :uuid do |t|
      
      t.timestamps
    end
  end
end
