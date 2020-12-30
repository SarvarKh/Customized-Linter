require_relative '../lib/js_linter.rb'

class JSLinter
  attr_reader :js_linter_controller, :reader
  def initialize(file)
    puts 'JS_Linter is being initialized... '
    js_linter_controller = JSLinterControl.new(file)
  end
end

file = ARGV[0]
js_linter = JSLinter.new(file)
