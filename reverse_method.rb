def reverse(str)
    splited = str.split("")
    c = splited.last
    idxlast = splited.index(c)
    ranger = idxlast.downto(0)
    convertedidx = ranger.to_a
    convertedidx.each do |ind|
      puts splited[ind]
    end
  end
  
  reverse("hello")
  