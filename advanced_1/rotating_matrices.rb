def rotate90(matrix)
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

  new_matrix.map do |subarr|
    subarr.reverse!
  end
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2