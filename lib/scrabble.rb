class String
  define_method(:scrabble) do
    self.tr!('aeioulnrst', '1')
    self.tr!('dg', '2')
    self.tr!('bcmp', '3')
    self.tr!('fhvwy', '4')
    self.tr!('k', '5')
    self.tr!('jx', '8')
    self.tr!('qz', 'A')
    answer_array = self.split('')
    total = 0
    answer_array.each do |item|
      if item == "A"
        total += item.to_i(16)
      else
        total += item.to_i()
      end
    end
    total
  end
end
