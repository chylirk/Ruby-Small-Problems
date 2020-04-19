require_relative 'merge_sorted_lists'

def merge_sort(arr)
  arr.reduce([]) { |result, val| merge(result, [val]) }
end