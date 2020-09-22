# frozen_string_literal: true

require 'json'
require 'sinatra'

# YesNoController
class UTCTimeController < Sinatra::Base
  before do
    content_type :json
  end

  get '/utc' do
    { time: Time.now.utc }.to_json
  end
end
