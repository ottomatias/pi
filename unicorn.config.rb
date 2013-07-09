worker_processes 1
timeout 30
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    # Unicorn master intercepting TERM and sending myself QUIT instead
    Process.kill 'QUIT', Process.pid
  end

  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    # Unicorn worker intercepting TERM and doing nothing. Wait for master to sent QUIT
  end

  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end
