require 'rails/generators'

module Timequake
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Install Timequake"
      # source_root File.join(File.dirname(__FILE__), "templates")
      source_root File.join(File.dirname(__FILE__), "templates")

      def install_timequake
        # How to include directories
        # directory "timequake", "app/assets/stylesheets/timequake"

        template "timequake_overrides.scss", File.join('app/assets/stylesheets', "timequake_overrides.scss")

        insert_into_file File.join('app/assets/stylesheets', "application.scss"), "@import 'timequake_overrides';\n"

        # For webpacker
        # insert_into_file File.join('app/views/layouts', "application.html.erb"), "    <%= javascript_include_tag 'timequake' %>\n", before: "</head>"
      end
    end
  end
end
