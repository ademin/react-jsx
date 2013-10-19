require 'spec_helper'

module React
  describe JSX do
    it 'should not create context twice' do
      React::JSX.context.object_id.should eq(React::JSX.context.object_id)
    end

    it 'should detect weather the RubyRacer is used or not' do
      React::JSX.rubyracer?.should eq(ExecJS.runtime == ExecJS::Runtimes::RubyRacer)
    end

    it 'should return compiled JavaScript for React JSX source' do
      jsx = <<-EOF
        /** @jsx React.DOM */
        React.renderComponent(
          <h1>Hello, world!</h1>,
          document.getElementById('example')
        );
      EOF

      js = <<-EOF
        /** @jsx React.DOM */
        React.renderComponent(
          React.DOM.h1(null, \"Hello, world!\"),
          document.getElementById('example')
        );
      EOF

      React::JSX.compile(jsx).should eq(js)
    end
  end
end
