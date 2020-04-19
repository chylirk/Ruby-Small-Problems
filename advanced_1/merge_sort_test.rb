require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'merge_sort'

class MergeSortTest < Minitest::Test
  def setup
  end

  def test_should_sort_integers
    arr = [9, 5, 7, 1]
    assert_equal [1, 5, 7, 9], merge_sort(arr)
    assert_equal [9, 5, 7, 1], arr
  end

  def test_should_sort_integers_2
    arr = [5, 3]
    assert_equal [3, 5], merge_sort(arr)
    assert_equal [5, 3], arr
  end

  def test_should_sort_integers_3
    arr = [6, 2, 7, 1, 4]
    assert_equal [1, 2, 4, 6, 7], merge_sort(arr)
  end

  def test_should_sort_strings
    arr = %w[Sue Pete Alice Tyler Rachel Kim Bonnie]
    assert_equal %w[Alice Bonnie Kim Pete Rachel Sue Tyler], merge_sort(arr)
    assert_equal %w[Sue Pete Alice Tyler Rachel Kim Bonnie], arr
  end

  def test_should_sort_integers_4
    arr = [7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]
    assert_equal [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54], merge_sort(arr)
    assert_equal [7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46], arr
  end
end

