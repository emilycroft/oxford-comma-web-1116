def oxford_comma(array)
  result = ""

  if array.length == 1
    result = array.join
  elsif array.length == 2
    array.insert(-2, "and")
    result = array.join(" ")
  elsif array.length >= 3
    result = "#{array[0, (array.length - 1)].join(", ")}, and #{array.last}"
  end

  return result
end
