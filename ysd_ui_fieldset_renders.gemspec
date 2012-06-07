Gem::Specification.new do |s|
  s.name    = "ysd_ui_fieldset_renders"
  s.version = "0.1"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-05-12"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml'] 
  s.description = "Yurak Sisa UI fieldset renders"
  s.summary = "Yurak Sisa UI fieldset renders"
  
  s.add_runtime_dependency "ysd_md_fieldset"
  s.add_runtime_dependency "ysd_core_themes" 
end
