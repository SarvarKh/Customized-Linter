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

  describe 'checker_function_name' do
    it 'returns [Style Error: Prefer CamelCase over snake_case] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Style Error: Prefer CamelCase over snake_case].'
      expect(error_scanner.checker_function_name).to eql(actual)
    end
  end

  describe 'checker_parentheses_function' do
    it 'returns [Error: Missing parentheses] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing parentheses].'
      expect(error_scanner.checker_parentheses_function).to eql(actual)
    end
  end

  describe 'checker_open_curlybrace_function' do
    it 'returns [Error: Missing opening curly brace] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing opening curly brace].'
      expect(error_scanner.checker_open_curlybrace_function).to eql(actual)
    end
  end

  describe 'checker_close_curlybrace_function' do
    it 'returns [Error: Missing closing curly brace for opened curly brace] ' do
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing closing curly brace].'
      expect(error_scanner.checker_close_curlybrace_function).to eql(actual)
    end
  end
end
