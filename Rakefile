# frozen_string_literal: true

desc 'Start sinatra server'
namespace :sinatra do
  desc 'Start sinatra server.'
  task :start do
    sh 'bundle exec ruby src/app.rb'
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
