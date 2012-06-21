module UIFieldSetRender
  class FieldSetRender
     
     #
     # Initialize
     #
     def initialize(name, app)

        @name = name
        @app = app
        
     end
     
     #
     # Renders a resource
     # @param [String] resource_name
     #   To get the template
     # @param [String] subsystem
     #   To get the template
     # @param [Hash] options
     #   To extract information
     #
     def render(resource_type, subsystem='', options={})

      template_name = [@name] 
      template_name << "-#{subsystem}" if subsystem and subsystem.to_s.strip.length > 0       
      template_name << "-#{resource_type}"
      template_name = template_name.join
      
      puts "rendering template_name : #{template_name}"
      
      template_path = find_template(template_name)      
      template = Tilt.new(template_path)
      the_render = template.render(@app, options)                                  
      
      puts "#{template_name} encoding:  #{the_render.encoding}"
      
      the_render
     
     end
  
     # Finds the template to render the content
     #
     #
     def find_template(name)
      
        # Search in theme path
        template_path = Themes::ThemeManager.instance.selected_theme.resource_path("#{name}-fieldset-render.erb",'template','ui') 
         
        # Search in the project
        if not template_path
           path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'views', "#{name}-fieldset-render.erb"))                                 
           template_path = path if File.exist?(path)
        end
         
        puts "ui template path (#{name}) : #{template_path}"
        
        template_path
       
    end #find_template
     
  end #FieldSetRender
end #UIFieldSetRender