# Can pass to Redis.new
#   url: 'redis://127.0.0.1:6379'
Resque.redis = Redis.new
Resque.after_fork = proc { ActiveRecord::Base.establish_connection }
