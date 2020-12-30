require_relative '../lib/js_linter'
# top-level class documentation
class JSLinter
  attr_reader :js_linter_controller
  def initialize(file)
    puts 'Start JS Linter initializing... '
    @js_linter_controller = JSLinterControl.new(file)
  end
end

file = ARGV[0]
JSLinter.new(file)
