# Creates a new array to return the intersection of the two input arrays
require 'pry'

def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  if array1 == [] || array2 == []
    return []
  end

  if array1 == [] && array2 == []
    return []
  end

  intersection = []
  index1 = 0
  index2 = 0
  if array1.length >= array2.length
    longer_array = array1
    shorter_array = array2
  else
    longer array = array2
    shorter_array = array1
  end
  while index1 < longer_array.length
    while longer_array[index1] != shorter_array[index2]
      if shorter_array[index2] == nil
        index1 += 1
        index2 = 0
      else
        index2 += 1
      end
    end
    if longer_array[index1] != nil# binding.pry
      intersection << longer_array[index1]
      index1 += 1
      index2 = 0
    end
    # binding.pry
  end
  return intersection
  # raise NotImplementedError
end
