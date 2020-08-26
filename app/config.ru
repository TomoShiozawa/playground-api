# frozen_string_literal: true

require_relative './controllers'

# run Rack::URLMap.new({
#                        '/busho' => BushoController,
#                        '/yesno' => YesNoController,
#                        '/dice' => DiceController
#                      })
use BushoController
use YesNoController
run DiceController
