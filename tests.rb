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
            mean([1]).must_equal(1)
        end
    end

    describe 'median' do
        it 'finds the middle number' do
            median([1,3,7]).must_equal(3)
            median([1,2,3,4]).must_equal(2.5)
            median([1]).must_equal(1)
        end
    end

    describe 'standard_deviation' do
        it 'finds the standard deviation' do
            standard_deviation([6, 2, 3, 1]).round(2).must_equal(1.87)
            standard_deviation([1,1,1,1,1,1,1,1]).round(2).must_equal(0)
            standard_deviation([9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4]).round(2).must_equal(2.98)
        end
    end

end
