# frozen_string_literal: true

require_relative '../lib/js_linter'
# top-level class documentation
class JSLinter
  def initialize(file)
    puts 'Start JS Linter initializing... '
    JSLinterControl.new(file)
  end
end

file = ARGV[0]
JSLinter.new(file)
