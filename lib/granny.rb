class Granny
  def initialize
    @range = *(1930..1950)
  end
  
  def says something
    something == something.upcase ? "NOT SINCE #{@range.sample}" : "HUH? Speak up, Sonny! The hearing aid is out of power!"
  end
  
end
