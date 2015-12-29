class UserGirlDecorator < Draper::Decorator
  delegate_all

  def name
    model.girl.name
  end

  def spirit
    model.girl.spirit
  end
end
