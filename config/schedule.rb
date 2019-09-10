# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
set :environment, ENV['RAILS_ENV']#"development"
set :output, "#{Whenever.path}/log/whenever.log"
set :job_template, nil?
# This will execute on after each 1 minute
every 1.minute do
    # env :PATH, ENV['PATH']
    runner "DemoJobJob.perform_later()"
    command "echo 'here you can use raw cron syntax too'"
end
