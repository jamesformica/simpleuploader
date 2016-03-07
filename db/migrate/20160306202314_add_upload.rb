class AddUpload < ActiveRecord::Migration
  def change
  	create_table :uploads do |t|
			t.string :filename
			t.binary :filecontent

			t.timestamps null: false
		end
  end
end
