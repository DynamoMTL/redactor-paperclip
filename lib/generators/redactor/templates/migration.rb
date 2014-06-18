class CreateRedactorAssetsTable < ActiveRecord::Migration
   def self.up
     create_table :redactor_assets do |t|
       t.has_attached_file :asset
    end

  end

  def self.down
    drop_table :redactor_assets
  end
end