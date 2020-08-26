# frozen_string_literal: true

desc 'Start server'
namespace :server do
  desc 'Start server.'
  task :start do
    sh 'bundle exec rackup app/config.ru'
  end
end

namespace :busho do
  desc 'Add family names.'
  task :add_family_name do
    sh 'ruby src/controller/busho/add_family_name.rb'
  end

  desc 'Add given names.'
  task :add_given_name do
    sh 'ruby src/controller/busho/add_given_name.rb'
  end
end
