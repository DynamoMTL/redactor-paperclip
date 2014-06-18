require 'rails/generators'
require File.expand_path('../utils', __FILE__)

module Redactor
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)
		
		include Rails::Generators::Migration
    	include Generators::Utils::InstanceMethods
    	extend Generators::Utils::ClassMethods

		def install
			migration_template 	'migration.rb', 'db/migrate/create_redactor_assets_table.rb'
			
			copy_file "model.rb", "app/models/redactor_asset.rb"
		end
	end
end
