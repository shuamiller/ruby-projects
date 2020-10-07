alpha_arr = ('a'..'z').to_a
num_arr = (1..26).to_a
new_arr = []

def caesar_cipher(string, factor)
  i = 0
  while i < string.length
    old_index = alpha_arr.index(string[i])
