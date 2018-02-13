# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  key = []
  value = []
  name_hash.each do |x, y|
    key << x
    value << y
  end
  i = 0
  j = 0
  min = 0
  out = true
  while i < value.length
    while j < value.length
      out = out && value[i] <= value[j]
    end
    if out
      out = i
    end
  end
  key[out]
  
end