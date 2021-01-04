require_relative '../bin/main'

describe JSLinter do
  source_file = '../samples/javascript_test_01.js'
  my_jslinter = JSLinter.new(source_file)

  describe 'read_file' do
    it 'returns source_file content ' do
      expect(my_jslinter.read_file).to eql(["function my_function   \n",
                                            "  console.log(\"some random text, bla bla bla\");\n",
                                            "  return p1 * p2; \n", "}\n"])
    end
  end

  describe 'checker_indentation' do
    it 'returns [Error: Redundant space] ' do
      expect(my_jslinter.checker_indentation).to eql('[File: ./samples/javascript_test_01.js], [Line: #1], [Error: Redundant space].')
    end
  end
end
