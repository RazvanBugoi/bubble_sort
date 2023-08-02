def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    new_n = 0

    for i in 1...n
      if array[i - 1] > array[i]
        temp = array[i - 1]
        array[i - 1] = array[i]
        array[i] = temp
        swapped = true
        new_n = i
      end
    end

    n = new_n

    break if !swapped
  end

  array
end

bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]

