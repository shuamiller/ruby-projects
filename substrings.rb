def substrings (str, dict)
  hash = {}

  for s in dict
    tempStr = str
    if tempStr.include? s
      value = 0
      while tempStr.include? s
        value += 1
        tempStr = tempStr.sub(s, '')
      end
      hash[s] = value
    end
  end

  puts hash
end


substrings "Globular", ["glob", "Glob", "Go", "lob", "u", "ar"]
