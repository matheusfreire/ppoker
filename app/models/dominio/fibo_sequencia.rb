class Dominio::FiboSequencia
  ZERO = 0
  HALF = 0.5
  ONE = 1
  TWO = 2
  THREE = 3
  FIVE = 5
  EIGHT = 8
  THIRTEEN = 13
  TWENTY = 20
  FOURTY = 40

  DOMINIOS = [
      {key: ZERO, value: "0"},
      {key: HALF, value: "1/2"},
      {key: ONE, value: "1"},
      {key: TWO, value: "2"},
      {key: THREE, value: "3"},
      {key: FIVE, value: "5"},
      {key: EIGHT, value: "8"},
      {key: THIRTEEN, value: "13"},
      {key: TWENTY, value: "20"},
      {key: FOURTY, value: "40"},
  ]

  def self.buscar_por_chave(chave)
    DOMINIOS.select {|p| p[:key] == chave }[0]
  end

  def self.buscar_por_value(value)
    DOMINIOS.select {|p| p[:value] == value }[0]
  end
end