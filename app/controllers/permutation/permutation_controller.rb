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

    permutations = (1..n).to_a.permutation(r).to_a
    return { num_of_permutations: permutations.length, permutations: permutations }.to_json
  end
end
