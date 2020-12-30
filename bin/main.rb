require_relative '../lib/js-linter.rb'

class JSLinter
  def initialize(file)
    puts 'Start JS Linter initializing... '
    js_linter_controller = JSLinterControl.new(file)
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)