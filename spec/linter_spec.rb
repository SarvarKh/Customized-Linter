require_relative '../lib/error_scanner.rb'

describe ErrorScanner do
  source_file = ["function my_function   \n", "  console.log(\"some random text, bla bla bla\");\n", "  return p1 * p2; \n", "\n"]
  error_scanner = ErrorScanner.new(source_file)

  describe 'checker_indentation' do
    it 'returns [Error: Redundant space] ' do
      expectation = error_scanner.checker_indentation
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Redundant space].'
      expect(expectation).to eql(actual)
    end
  end
end
