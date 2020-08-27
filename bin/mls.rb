#require "MLS/version"

module MLS

end

require_relative '../config/environment'
cli = MLS::Cli.new
cli.call
