require 'execjs'
require 'react/source'

module React
  module JSX
		def self.compile(code)
      content = File.read(React::Source.bundled_path_for('JSXTransformer.js'))
      @context ||= ExecJS.compile(content)
      @context.call('JSXTransformer.transform', code)['code']
		end
	end
end