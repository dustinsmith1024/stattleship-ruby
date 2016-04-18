require 'spec_helper'

module Stattleship
  module Validators
    RSpec.describe ScoringMethodValidator do
      describe 'validates' do
        it 'currently does no validation' do
          key = 'scoring_method'
          params = { 'scoring_method' => 'foo' }
          class_name = ''

          validator = ScoringMethodValidator.new(key: key,
                                                params: params,
                                                class_name: class_name)

          expect {
            validator.validate
          }.not_to raise_error
        end
      end
    end
  end
end
