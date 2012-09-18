Gem::Specification.new do |s|
  s.name    = "ysd_ui_fieldset_renders"
  s.version = "0.2.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-05-12"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml'] 
  s.description = "Yurak Sisa UI fieldset renders"
  s.summary = "Yurak Sisa UI fieldset renders"
  s.homepage = "http://github.com/yuraksisa/ysd_ui_fieldset_renders"
  
  s.add_runtime_dependency "ysd_md_fieldset"           # The model
  s.add_runtime_dependency "ysd_core_themes"           # To find the templates

  s.add_runtime_dependency "ysd_plugin_profile"        # RAC fieldset: To retrieve the users and groups 
  s.add_runtime_dependency "ysd_plugin_media_gallery"  # Photo fieldset: Render the photo uploader -upload_photo helper-
  s.add_runtime_dependency "ysd_plugin_attachment"     # Attachment fieldset: Upload and download attachments
  
end
