module PokersHelper

  def get_note(note)
    Dominio::FiboSequencia.buscar_por_chave(note)[:value]
  end
end
