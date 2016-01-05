class UserGirlDecorator < Draper::Decorator
  delegate_all

  def id
    model.girl_id
  end

  def name
    model.girl.name
  end

  def spirit
    model.girl.spirit
  end
end
