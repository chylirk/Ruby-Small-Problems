require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'merge_sorted_lists'

class MergeTest < Minitest::Test
  def setup
  end

  def test_should_merge_two_arrays
    arr1 = [1, 5, 9]
    arr2 = [2, 6, 8]
    assert_equal [1, 2, 5, 6, 8, 9], merge(arr1, arr2)
    assert_equal [1, 5, 9], arr1
    assert_equal [2, 6, 8], arr2
  end

  def test_should_merge_different_sized_arrays
    arr1 = [1, 1, 3]
    arr2 = [2, 2]
    assert_equal [1, 1, 2, 2, 3], merge([1, 1, 3], [2, 2])
    assert_equal [1, 1, 3], arr1
    assert_equal [2, 2], arr2
  end

  def test_should_merge_empty_array_first_argument
    arr1 = []
    arr2 = [1, 4, 5]
    assert_equal [1, 4, 5], merge([], [1, 4, 5])
    assert_equal [], arr1
    assert_equal [1, 4, 5], arr2
  end

  def test_should_merge_empty_array_second_argument
    arr1 = [1, 4, 5]
    arr2 = []
    assert_equal [1, 4, 5], merge([1, 4, 5], [])
    assert_equal [], arr2
    assert_equal [1, 4, 5], arr1
  end
end
