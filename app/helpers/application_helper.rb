module ApplicationHelper

  def get_station_name(id)
    case id
    when 1
      'Help Me Chill'
    when 2
      'Lift Me Up'
    when 3
      'I Wanna Dance'
    end
  end

end
