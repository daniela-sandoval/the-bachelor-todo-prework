def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |madam|
      if madam["status"] == "Winner"
        winner = madam["name"].split(" ")[0]
      end
    end
    winner
  end

def get_contestant_name(data, occupation)
  lady = ""
  data.each do |season, madams|
    data[season].each do |madam|
    if madam["occupation"] == occupation
        lady = madam["name"]
      end
    end
  end
  lady
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, madams|
    data[season].each do |madam|
      if madam["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  job = ""
  data.each do |season, madams|
    data[season].find do |madam|
      if madam["hometown"] == hometown
        job = madam["occupation"]
      end
    end
  end
  job
end

def get_average_age_for_season(data, season)
  ages = []
    data[season].each do |madam|
      madam.each do |attribute, value|
        if attribute == "age"
      ages << value.to_f
      end
    end
  end
  return (ages.inject {|sum, i| sum + i}.to_f/ages.length).round
end
