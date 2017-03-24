module ApplicationHelper
  def return_castrated (castrated)
    if castrated == true
      "Sim"
    else
      "Não"
    end
  end
end
