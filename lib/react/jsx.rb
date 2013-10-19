require 'execjs'
require 'react/source'

module React
  module JSX
    def self.context
      unless @context
        content = File.read(React::Source.bundled_path_for('JSXTransformer.js'))

        @context = if rubyracer?
          V8::Context.new.eval("module={}; exports={}; #{content}; module.exports")
        elsif rubyrhino?
          Rhino::Context.new.eval("module={}; exports={}; #{content}; module.exports")
        else
          ExecJS.compile(content)
        end
      end
      @context
    end

    def self.rubyracer?
      ExecJS.runtime == ExecJS::Runtimes::RubyRacer
    end

    def self.rubyrhino?
      ExecJS.runtime == ExecJS::Runtimes::RubyRhino
    end

    def self.compile(code)
      if rubyracer?
        context.transform(code)['code']
      elsif rubyrhino?
        context['transform'].new(code)['code']
      else
        context.call('JSXTransformer.transform', code)['code']
      end
    end
  end
end

