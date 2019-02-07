# your code goes here
def begins_with_r(array)

    flag = true
    array.each do |element|
      flag = false if element[0] != "r"
    end
    flag
  end

  def contain_a(array)

    container =[]
    array.each do |element|
      container << element if element.include? "a"
    end
    container
  end

  def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)

container = []
  array.each do |element|
  container << element if element.is_a?(String)
  end
  container
end

def count_elements(array)

  array.each do |original_hash|
    #iterating over each part of the original hash
    original_hash[:count] = 0
    #setting up a counter for that hash
    name = original_hash[:name]
    #applying that to a variable called name
    array.each do |hash|
    #iterating over the new hash
      if hash[:name] == name
        #saying if that hash is equal to a specific name
        original_hash[:count] += 1
        #add it to the original_hash array and increase the count by one
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)

  arr2[0].map do |name, prop_hash|
    #we first iterate over the second array using .map to grab the name and it's value pair
    new_prop_hash = {}
    #then we create a new hash
    arr1.each do |new_attr_hash|
    #then we iterate over the second array using .each
      if new_attr_hash[:first_name] == name
      #so if the new hash is equal to a specific name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      #then we'll merge the two data sets into the new_attr_hash
      end
    end
      new_prop_hash
      #then we'll return the new_prop_hash
  end
end

def find_cool(array)
container = []
    array.each do |element|
      container << element if element[:temperature] == "cool"
  end
end
