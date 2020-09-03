# frozen_string_literal: true

require 'json'
require 'sinatra'

# YesNoController
class CombinationController < Sinatra::Base
  before do
    content_type :json
  end

  get %r{/(\d+[cC]\d+)} do
    combination = params[:captures].first

    n = combination.split(/[cC]/)[0].to_i
    r = combination.split(/[cC]/)[1].to_i

    return { result: 0 }.to_json if n.zero?

    return { result: (1..n).to_a.combination(r).to_a.length }.to_json
  end
end
