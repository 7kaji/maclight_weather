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

# 出力先のログファイルの指定
set :output, '~/Dev/maclight/log/crontab.log'

# 平日の18時〜23時に実行
# every '0 18-23 * * 1-5' do
every '0 18-23 * * *' do
  command '~/Dev/maclight/maclight.rb'
end
