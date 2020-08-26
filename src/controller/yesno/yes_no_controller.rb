# frozen_string_literal: true

require 'json'

# YesNoController
class YesNoController
  class << self
    def get
      { answer: %w[yes no].sample }.to_json
    end
  end
end
