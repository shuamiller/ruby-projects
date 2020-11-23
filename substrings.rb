def substrings (str, dict)
  hash = {}

  for s in dict
    temp_str = str
    if temp_str.include? s
      value = 0
      while temp_str.include? s
        value += 1
        temp_str = temp_str.sub(s, '')
      end
      hash[s] = value
    end
  end

  puts hash
end


substrings "Globular", ["glob", "Glob", "Go", "lob", "u", "ar"]
