require 'rake'

task :install do
  machine = ""
  while (!File.exists?("#{Dir.pwd}/templates/soloistrc.#{machine}"))
    puts "Which machine are you provisioning? [default]"
    STDOUT.flush
    machine = STDIN.gets.chomp.downcase.gsub("\n", "")
    machine = "default" if machine.empty?
  end

  puts "Symlinking soloistrc.#{machine}"
  puts `rm "$PWD/.soloistrc"` if File.exists?("#{Dir.pwd}/.soloistrc")
  puts `ln -s "$PWD/templates/soloistrc.#{machine}" "$PWD/.soloistrc"`
  puts `rvmsudo soloist`
end

task :uninstall do
  #TODO
end

task :default => 'install'
