# frozen_string_literal: true

require_relative './controllers'

use BushoController
use YesNoController
run DiceController
