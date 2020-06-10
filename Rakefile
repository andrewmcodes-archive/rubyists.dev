# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"
require "rubycritic_small_badge"
require "rubycritic/rake_task"

Rails.application.load_tasks

RubyCriticSmallBadge.configure do |config|
  config.minimum_score = 90
end
RubyCritic::RakeTask.new do |task|
  task.options = %(--custom-format RubyCriticSmallBadge::Report
--minimum-score #{RubyCriticSmallBadge.config.minimum_score})
end
