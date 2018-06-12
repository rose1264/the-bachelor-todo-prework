def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"] == "Winner"
      return person["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)

end
