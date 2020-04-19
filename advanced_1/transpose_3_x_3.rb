# p: Write a method that takes a 3 x 3 matrix in Array of Arrays format 
#    and returns the transpose of the original matrix.
#        don't use the transpose method
# e:  see below
# d: array => array => array
# a:
#    create a matrix of nils with the dimensions of the transposed matrix
#        get the length of the matrix - len_m
#        get the length of the matrix subarrays - len_arr
#        create an array of nils which is length (len_m)
#        create an array with (len_arr) number of entries, each of which are the nil array
#
#    iterate through the arrays and subarrays (with index) to get the matrix indices
#        flip the indices and overwrite that location within the new transposed matrix
#            new_matrix[subarray_idx][old_matrix_idx] = element_value
#
# [0][0] => [0][0]
# [0][1] => [1][0]
# [0][2] => [2][0]
# [1][0] => [0][1]
# [1][1] => [1][1]
# [1][2] => [2][1]
# [2][0] => [0][2]
# [2][1] => [1][2]
# [2][2] => [2][2]

require 'pry'

def transpose(matrix)
  new_matrix = []
  matrix_length = matrix.length
  array_length = matrix[0].length

  new_array = [nil] * matrix_length

  array_length.times { new_matrix << new_array.clone }

  matrix.each_with_index do |subarray, idx_one|
    subarray.each_with_index do |elem, idx_two|
      # binding.pry
      new_matrix[idx_two][idx_one] = elem
    end
  end

  new_matrix
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose(matrix)

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]