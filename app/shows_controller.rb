def highest_rating
  order("rating DESC")[0].rating
end

def most_popular_show
  order("rating DESC")[0]
end

def lowest_rating
  order("rating ASC")[0].rating
end

def least_popular_show
  order("rating ASC")[0]
end

def ratings_sum
  sum = 0
  list = order("id ASC")
  c = 0
  while c < list.count do
    sum += list[c].rating
    c +=1
  end
  sum
end
