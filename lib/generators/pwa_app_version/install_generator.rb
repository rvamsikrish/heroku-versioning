require 'rails/generators'
module PwaAppVersion
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def code_that_runs
        puts 'Hi'
      end
    end
  end
end
