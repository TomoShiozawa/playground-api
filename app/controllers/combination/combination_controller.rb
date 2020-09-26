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

    combinations = (1..n).to_a.combination(r).to_a
    return { num_of_combinations: combinations.length, combinations: combinations }.to_json
  end
end
