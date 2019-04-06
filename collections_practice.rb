# your code goes here
def begins_with_r(array)
  array.each do |element|
    return false if element[0] != 'r'
  end
  return true
end

def contain_a(array)
i=0
  while i < array.length do
    if array[i].include?("a")
      i += 1
    else
      array.delete(array[i])
    end
  end
  array
end

def first_wa(array)
  array.each do |element|
    if element.to_s.upcase[0] == 'W' && element.to_s.upcase[1] == 'A'
      return element
    end
  end
end

def remove_non_strings(array)
i=0
  while i < array.length do
    if array[i].class == String
      i += 1
    else
      array.delete(array[i])
    end
  end
  array
end

def count_elements(array)
  i=0
  array.each do |hash_element|
    hash_element[:count] = 1
  end
  while i < array.length do
    if array == array.uniq
      return array
    else
      current_element = array.slice(i)
      array.delete_at(i)
      if array.include?(current_element)
        array[i][:count] += 1
      else
        array.push(current_element)
      end
    end
    i += 1
  end
  return array
end

def merge_data(keys_array, data_array)
i=0
  while i < keys_array.length do
    data_array.each do |person_hash|
      person_hash.each do |hash_first_name, data|
        data.each do |key, value|
          if keys_array[i][:first_name] == hash_first_name
            keys_array[i][key] = value
          end
        end
      end
    end
    i += 1
  end
  return keys_array
end

def find_cool(array)
i=0
  while i < array.length do
    if array[i][:temperature] != "cool"
      array.delete_at(i)
    end
    i += 1
  end
  return array
end

def organize_schools(schools_array)
  org_hash = {}
  schools_array.each do |school|
    school_name = school[0]
    school_loc = school[1][:location]
    if org_hash[school_loc] == nil
      org_hash[school_loc] = []
      org_hash[school_loc].push(school_name)
    else
      org_hash[school_loc].push(school_name)
    end
  end
return org_hash
end
