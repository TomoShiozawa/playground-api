# frozen_string_literal: true

require_relative './controllers'

use BushoController
use YesNoController
use PermutationController
use CombinationController
use UTCTimeController
run DiceController
