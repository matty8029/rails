class CreateValidationTests < ActiveRecord::Migration[6.0]
  def change
    create_table :validation_tests do |t|
      t.string :userName
      t.string :postNum
      t.string :age
      t.string :url
      t.string :mailaddress

      t.timestamps
    end
  end
end
