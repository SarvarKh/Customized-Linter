require_relative '../lib/error_scanner'
source_file = './samples/javascript_test_01.js'

describe ErrorScanner do
  error_scanner = ErrorScanner.new(source_file)

  describe 'checker_indentation' do
    it 'returns [Error: Redundant space] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Redundant space].'
      expect(error_scanner.checker_indentation).to eql(actual)
    end
  end

  describe 'checker_indentation_end' do
    it 'returns [Error: Extra space at the end of the line] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Extra space at the end of the line].'
      expect(error_scanner.checker_indentation_end).to eql(actual)
    end
  end
end
