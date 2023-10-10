def bubble_sort(array)
  last_index = array.length - 1
  0.upto(last_index) do |iteration|
    swap_count = 0
    first_index_of_last_unsorted_pair = (last_index - 1) - iteration
    0.upto(first_index_of_last_unsorted_pair) do |i|
      (a, b) = array[i, 2]
      if a > b
        array[i, 2] = array[i, 2].reverse
        swap_count += 1
      end
    end
    break if swap_count == 0
  end
  array
end

# Test
sample_array = [4, 3, 78, 2, 0, 2]
p bubble_sort(sample_array)
# => [0, 2, 2, 3, 4, 78]
