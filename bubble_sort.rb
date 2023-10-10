# Build a method #bubble_sort that takes an array
#   and returns a sorted array.
#   It must use the bubble sort methodology
#     (using #sort would be pretty pointless, wouldn’t it?).
# Example:
#   bubble_sort([4,3,78,2,0,2])
#   => [0,2,2,3,4,78]

# Solution 1:
#   Given array of length n
#   For each element starting with the first (whose index i = 0) and ending no later than the last but probably in the middle
#     Set swap count = 0
#     For each element starting from that element and ending with the element at index n - 2 - i
#       Where element is a, examine adjacent pair (a, b)
#       If a > b, swap a & b and increment swap count
#     If swap count = 0, sorting is finished, so break out of loop.
#   Return the modified (sorted) array



def bubble_sort(array)
  0.upto(array.length - 1) do |i|
    swap_count = 0
    i.upto(array.length - 2 - i) do |i|
      a = array[i]
      b = array[i + 1]
      if a > b
        array[i] = b
        array[i + 1] = a
        swap_count += 1
      end
    end
    break if swap_count == 0
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
