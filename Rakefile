def system!(cmd)
  puts "Running #{cmd}"
  raise "Error running #{cmd}!" unless system(cmd)
end

task :bootstrap do
  puts "================================================================================="
  system!("vagrant destroy -f")
  puts "================================================================================="
  system!("vagrant up")
  puts "=================================================================================="
  #system!("vagrant destroy -f")
end
