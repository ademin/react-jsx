require 'spec_helper'

module React
  describe JSX do
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