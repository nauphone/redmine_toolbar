require 'redmine'

Redmine::Plugin.register :redmine_toolbar do
  name 'Redmine Toolbar plugin'
  author 'Margasov Alexei'
  description 'Add collapse button'
  version '0.0.1'
end

class RedmineToolbarHookListener < Redmine::Hook::ViewListener
   def view_layouts_base_html_head(context)
     javascript_include_tag('toolbar.js', :plugin => :redmine_toolbar) +
     stylesheet_link_tag('toolbar.css', :plugin => :redmine_toolbar)
  end
end
