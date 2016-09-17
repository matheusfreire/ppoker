class Dominio::Profile


  PRODUCT_OWNER = 0
  DEVELOPER = 1
  SCRUM_MASTER = 2

  DOMINIOS = [
      {key: PRODUCT_OWNER, value: "Product Owner"},
      {key: DEVELOPER, value: "Developer"},
      {key: SCRUM_MASTER, value: "Scrum Master"}
  ]

  def self.buscar_por_chave(chave)
    DOMINIOS.select {|p| p[:key] == chave }[0]
  end

  def self.buscar_por_value(value)
    DOMINIOS.select {|p| p[:value] == value }[0]
  end



end