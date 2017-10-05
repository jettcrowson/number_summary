#To setup, add the following to your gem file and run 'bundle':
#
# gem 'minitest'
# gem 'minitest-reporters'
require './test_setup'
require './number_summary'

describe 'number_summary' do

    describe 'mean' do
        it 'returns the mean' do
            mean([1,2,3,4,5]).must_equal(3)
            mean([1,2,3,4]).must_equal(2.5)
        end
    end

    describe 'median' do
        it 'finds the middle number' do
            median([1,3,7]).must_equal(3)
            median([1,2,3,4]).must_equal(2.5)
        end
    end

end
