#To setup, add the following to your gem file and run 'bundle':
#
# gem 'minitest'
# gem 'minitest-reporters'
require './test_setup'
require './number_summary'

describe 'number_summary' do

    describe 'mean' do

        it 'returns the mean' do
            mean([1,2,3,4,5]).must_equal(3);
        end

    end

end
