Redmine::Plugin.register :redmine_auto_lock do
  name 'Redmine Auto Lock'
  author 'Systango'
  description 'This plugin locks the user on selected date'
  version '1.0.0'
  requires_redmine :version_or_higher => '2.2.4'
end
