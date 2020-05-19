def system!(cmd)
  puts "Running #{cmd}"
  raise "Error running #{cmd}!" unless system(cmd)
end

task :bootstrap do
  puts "================================================================================="
  puts "================================================================================="
  system!("vagrant plugin install vagrant-libvirt")
  system!("vagrant plugin install vagrant-mutate")
  system!("vagrant plugin install vagrant-hostmanager")
  system!("vagrant status")
  system!("vagrant box add bento/centos-7.7 --provider=virtualbox")
  system!("vagrant mutate bento/centos-7.7 libvirt")
  system!("vagrant up --provider=libvirt")  
  system!("vagrant box list")
  system!("vagrant status")
  system!("vagrant global-status")
  system!("vagrant destroy -f")
  puts "=================================================================================="
  puts "================================================================================="
end
