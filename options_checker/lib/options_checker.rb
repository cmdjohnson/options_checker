$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

#module OptionsChecker
#  VERSION = '0.0.1'
#end

class OptionsChecker
  def self.check options, mandatories
    raise "options argument must be a Hash" unless options.is_a?(Hash)
    raise "mandatories argument must be an Array" unless mandatories.is_a?(Array)

    for mandatory in mandatories
      raise "Argument #{mandatory} cannot be nil. You provided: #{options.inspect}" if options[mandatory].nil?
    end

    return options
  end
end
