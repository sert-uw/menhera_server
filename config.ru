# This file is used by Rack-based servers to start the application.

require 'unicorn/worker_killer'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
use Unicorn::WorkerKiller::MaxRequests, 30, 50, true
Rpush.embed
