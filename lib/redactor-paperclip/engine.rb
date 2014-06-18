module RedactorPaperclip
	class Engine < ::Rails::Engine
		isolate_namespace RedactorPaperclip				
		
		initializer :assets, group: :all do |config|
			Rails.application.config.assets.precompile += ['redactor.js', 'redactor.css']
		end

		rake_tasks do
			Dir[File.join(File.dirname(__FILE__),'../tasks/*.rake')].each { |f| load f }
		end
	end
end
