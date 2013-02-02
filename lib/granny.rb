class Granny
  def initialize(name = 'Ginny', years_remembered = (1930..1950))
    @range = *years_remembered
  end

  def replies_to something
    something == "BYE" || something.empty? ?
      "Don't sit there with your mouth open, you will catch flies." :
      something == something.upcase ?
        "NOT SINCE #{@range.sample}" :
        "HUH? Speak up, Sonny! The hearing aid is out of power!"
  end

end
