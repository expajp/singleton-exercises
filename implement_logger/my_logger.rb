require 'singleton'

class MyLogger
  include Singleton
  attr_reader :history

  def initialize
    @history = []
  end

  def clear_history
    @history.clear
  end

  def info(arg)
    @history << arg
    print "INFO: #{arg}"
  end
  
  def debug(arg)
    @history << arg
    print "DEBUG: #{arg}"
  end

  def error(arg)
    @history << arg
    $stderr.print "ERROR: #{arg}"
  end
end
