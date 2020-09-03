# frozen_string_literal: true

require 'json'
require 'sinatra'

# YesNoController
class PermutationController < Sinatra::Base
  before do
    content_type :json
  end

  get %r{/(\d+[pP]\d+)} do
    permutation = params[:captures].first

    n = permutation.split(/[pP]/)[0].to_i
    r = permutation.split(/[pP]/)[1].to_i

    return { result: 0 }.to_json if n.zero?

    return { result: (1..n).to_a.permutation(r).to_a.length }.to_json
  end
end
