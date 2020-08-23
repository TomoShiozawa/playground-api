# frozen_string_literal: true

Dir.glob(File.expand_path('./controller/**/*_controller.rb', __dir__)).sort.each do |file|
  require file
end
