# frozen_string_literal: true

Dir.glob(File.expand_path('./controllers/**/*_controller.rb', __dir__)).sort.each do |file|
  require file
end
