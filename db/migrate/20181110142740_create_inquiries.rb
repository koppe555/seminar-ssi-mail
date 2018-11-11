class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :cource
      t.string :interest
      t.string :content

      t.timestamps
    end
  end
end
