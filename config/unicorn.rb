root = "/home/root/apps/bj_crm/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/err.log"
stdout_path "#{root}/log/out.log"

listen "/tmp/unicorn.bj_crm.sock"
worker_processes 2
timeout 30