names = %w(nandos dishoom kfc mcdonalds pizzahut)
addresses = %w(London Bristol Birmingham Oxford Brighton)
categories = %w(chinese italian japanese french belgian)

10.times do
  Restaurant.create(name: names.sample,
                    address: addresses.sample,
                    category: categories.sample)
end
