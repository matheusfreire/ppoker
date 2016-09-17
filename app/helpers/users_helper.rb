module UsersHelper

  def get_profile(chave)
    Dominio::Profile.buscar_por_chave(chave)[:value]
  end
end
