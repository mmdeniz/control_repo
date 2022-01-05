class profile::ssh_server {
        package {'openssh-server':
                 ensure => present,
         }
         service { 'sshd':
                 ensure => 'running',
                 enable => 'true',
         }
         ssh_authorized_key { 'root@master.puppet.vm':
                 ensure => present,
                 user => 'root',
                 type => 'ssh-rsa',
                 key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyWfIGNKYmfdQopJtTFxWWoSIUXBWXM1rirPo3KoSs1mxXZ9HNpFRfxNbjDwiCEL9RYmGrnwDnEpZ4DNzItZOYb7d3jNL6iZvzcOs2hp4sysVGCWxKoyG5eT9aObG9EXlERAFEZjMBipILoCqupJ8uIMA7Wi1lrFvuwJUFFAI4ih0PYMPCNJQw2LqkunX4itU5NMl7EcjMhtXK4JOP574C0Q0gAOZSGGutRKQ3l1O2uH8kX+16PPerd29we1SAEIg8KH5vkkY82TPcqZv+N9ZBit1SkdAQ5lwjzuMUQh/53D/fdZttQuzMY5trRE5b2WqPUiKuQ8oaHPD6NROJOZML',
         }
}
