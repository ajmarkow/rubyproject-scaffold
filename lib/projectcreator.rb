#!/usr/bin/env ruby

require('Fileutils')

def make_files(class_array, project_name)
  class_array.each do |class_name|
    File.write("./#{project_name}/lib/#{class_name}.rb", "class #{class_name}\nend")
    File.write("./#{project_name}/spec/#{class_name}_spec.rb", "class #{class_name}\nend")
  end
end

puts "                                                   "
puts "This is a ruby project creator."
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
puts"Let's start by entering your project name:"
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
project_name = gets.chomp
FileUtils.mkdir(project_name)
# FileUtils.cd(project_name)
FileUtils.mkdir("./#{project_name}/lib")
FileUtils.mkdir("./#{project_name}/spec")
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
puts "Great, what classes did you want in your project?"
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
raw_class_names = gets.chomp.split(/[, ]+/)
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
# confirmation = Projectcreator.new(project_name)
# confirmationmessage = confirmation.class_name_split(raw_class_names)
#puts "You input the project name #{project_name} and class names: #{confirmationmessage}"
puts "You entered the class names: #{raw_class_names}"
puts "                                                   "
puts"---------------------------------------"
puts "                                                   "
puts "Creating your project!"
puts "                                                   "
puts"---------------------------------------"
# FileUtils.cd('lib')
make_files(raw_class_names,project_name)
puts "                                                   "
puts " ########::. #######:: ##::. ##: ########: "
puts " ##.... ##:'##.... ##: ###:: ##: ##.....::"
puts " ##:::: ##: ##:::: ##: ####: ##: ##::::::: "
puts " ##:::: ##: ##:::: ##: ## ## ##: ######::: "
puts " ##:::: ##: ##:::: ##: ##. ####: ##...:::: "
puts " ##:::: ##: ##:::: ##: ##:. ###: ##::::::: "
puts " ########::. #######:: ##::. ##: ########: "


