unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "juxtapose/version"

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'juxtapose/**/*.rb')).reverse.each do |file|
    puts "file: #{file}"
    app.files.unshift(file)
  end
end
