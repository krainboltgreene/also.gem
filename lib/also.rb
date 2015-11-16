require "subprocess"
require "celluloid/current"

class Also
  include Celluloid

  def initialize(arguments, options)
    arguments.each do |argument|
      async.execute(argument.split(" "))
    end
  end

  def execute(command)
    Subprocess.check_call(command)
  end
  require_relative "also/version"
end
