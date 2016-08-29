class Xmas

  def initialize(gifts)

  end

  def self.gifts(num)

    @gifts = [
      ["a partridge in a pear tree"],

      ["two turtle doves", 'and a partridge in a pear tree'],

      ['three french hens','two turtle doves','and a partridge in a pear tree'],

      ['four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],

      ["FIVE GOLDEN RINGS",'four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['eight maids-a-milking','seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['nine ladies dancing','eight maids-a-milking','seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['ten lords-a-leaping','nine ladies dancing', 'eight maids-a-milking','seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['eleven pipers piping','ten lords-a-leaping','nine ladies dancing', 'eight maids-a-milking','seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree'],
      ['twelve drummers drumming','eleven pipers piping','ten lords-a-leaping','nine ladies dancing', 'eight maids-a-milking','seven swans-a-swimming','six geese-a-laying','FIVE GOLDEN RINGS','four calling birds','three french hens','two turtle doves','and a partridge in a pear tree']
    ]

    return @gifts[num]
  end

  def self.verse(num)
    @ordinal = ['first','second','third','fourth','fifth','sixth','seventh','eighth','ninth','tenth','eleventh','twelfth']
    return verses = "On the #{@ordinal[num]} day of Christmas my true love gave to me\n" + self.gifts(num).join("\n")

  end

  ##ugh
  def self.sing
    song = ""
    12.times do |i|
      if i != 11
        song += self.verse(i) + "\n\n"
      else
        song += self.verse(i)
      end
    end
    
    return song
  end


end
  # tst= nil
  # puts Xmas.gifts
