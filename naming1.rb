$uczelnia = "Polibuda"

class Straz
  def self.wezwij(akademik)
    # ...
  end
end

class OndraszekPortierka
  AKADEMIK = :ondraszek
  @@klucze = OndraszekKlucze.new

  def initialize(kolor)
    @kamizelka = Kamizelka.new(kolor)
  end

  def wezwij_straz
    Straz.wezwij(AKADEMIK)
  end
end
