namespace :redmine_auto_lock do
  task :lock_user => :environment do
  	custom_field = CustomField.where(name: "Auto lock on").first
  	unless custom_field.blank?
	  	custom_values = CustomValue.where("custom_field_id = ? and value =?", custom_field.id, Date.today)
	  	custom_values.each{|custom_value| custom_value.customized.lock! rescue nil}
  	end
	end
end
