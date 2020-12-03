def bubble_sort(arr)
  sorted_arr = arr
  isSorted = false
  passes = 0
  until isSorted
    switches = 0
    i = 0
    while i < ((sorted_arr.length - 1) - passes)
      first_num = sorted_arr[i]
      second_num = sorted_arr[i+1]
      if sorted_arr[i] > sorted_arr[i+1]
        sorted_arr[i] = second_num
        sorted_arr[i+1] = first_num
        switches = switches + 1
      end
      i = i + 1
    end
    if switches == 0
      isSorted = true
    end
    passes = passes + 1
  end
  p sorted_arr
end

bubble_sort([4,3,78,2,0,2])
