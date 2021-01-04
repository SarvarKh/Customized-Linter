require_relative '../lib/error_scanner.rb'

describe ErrorScanner do
  source_file = './samples/javascript_test_01.js'
  error_scanner = ErrorScanner.new(source_file)

  describe 'checker_indentation' do
    it 'returns [Error: Redundant space] ' do
      expectation = error_scanner.checker_indentation
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Redundant space].'
      expect(expectation).to eql(actual)
    end
  end

  describe 'checker_indentation_end' do
    it 'returns [Error: Extra space at the end of the line] ' do
      expectation = error_scanner.checker_indentation_end
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Extra space at the end of the line].'
      expect(expectation).to eql(actual)
    end
  end

  describe 'checker_function_name' do
    it 'returns [Style Error: Prefer CamelCase over snake_case] ' do
      expectation = error_scanner.checker_function_name
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Style Error: Prefer CamelCase over snake_case].'
      expect(expectation).to eql(actual)
    end
  end

  describe 'checker_parentheses_function' do
    it 'returns [Error: Missing parentheses] ' do
      expectation = error_scanner.checker_parentheses_function
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing parentheses].'
      expect(expectation).to eql(actual)
    end
  end

  describe 'checker_open_curlybrace_function' do
    it 'returns [Error: Missing opening curly brace] ' do
      expectation = error_scanner.checker_open_curlybrace_function
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing opening curly brace].'
      expect(expectation).to eql(actual)
    end
  end

  describe 'checker_close_curlybrace_function' do
    it 'returns [Error: Missing closing curly brace for opened curly brace] ' do
      expectation = error_scanner.checker_close_curlybrace_function
      actual = '[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Missing closing curly brace for opened curly brace].'
      expect(expectation).to eql(actual)
    end
  end
end
