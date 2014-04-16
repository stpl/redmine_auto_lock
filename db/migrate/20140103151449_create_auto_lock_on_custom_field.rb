class CreateAutoLockOnCustomField < ActiveRecord::Migration
 	def change
   	custom_field = CustomField.new({"name"=>"Auto lock on", "field_format"=>"date", 
									"min_length"=>"0", "max_length"=>"0", "regexp"=>"",
								 	"default_value"=>"", "is_required"=>"0", "visible"=>"1",
									"editable"=>"1", "is_filter"=>"0","type"=>"UserCustomField"},
									:without_protection => true)
   	custom_field.save!
 	end
end
