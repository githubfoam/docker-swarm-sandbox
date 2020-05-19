def system!(cmd)
  puts "Running #{cmd}"
  raise "Error running #{cmd}!" unless system(cmd)
end

task :bootstrap do
  puts "================================================================================="
  puts "================================================================================="
  system!("vagrant plugin install vagrant-libvirt")
  system!("vagrant plugin install vagrant-libvirt")  
  system!("vagrant up")
  system!("vagrant destroy -f")
  puts "=================================================================================="
  puts "================================================================================="
end
