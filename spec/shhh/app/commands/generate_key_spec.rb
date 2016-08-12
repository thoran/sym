require 'spec_helper'
require 'digest'
module Shhh
  module App
    module Commands
      RSpec.describe GenerateKey do

        let(:argv) { %w(-gcT) }

        context 'new private key' do
          include_context :run_command

          it 'should be generated' do
            expect_command_to_have klass: GenerateKey,
                                   output: [ %r([a-zA-Z0-9\-_=]{44,45}) ],
                                   option: :generate,
                                   value: true
          end
        end
      end
    end
  end
end