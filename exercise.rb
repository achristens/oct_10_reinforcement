# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# }

require 'pp'
digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']
sp = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve', 'diez']

# This method is going on the idea that the common denominator of each hash item is the index of each respective array position.
output_hash = {}

digits.each_with_index do |value, index|
  value_hash = {}
  value_hash[:french]  = fr[index]
  value_hash[:english] = en[index]
  value_hash[:spanish] = sp[index]
  # print value_hash
  output_hash[value] = value_hash
end

pp output_hash
