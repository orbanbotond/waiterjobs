Factory.define :restaurant_page do |rp|
  rp.address 'First Avenue 12'
  rp.meta  'snacks cocktail'
  rp.content 'The best place'
  rp.city 'London'
  rp.sefurl 'Snacktail'
  rp.name 'Snack(s)Tail'
  rp.title 'Snack(s)Tail restaurant'
end

Factory.define :textual_page do |rp|
  rp.meta  'thank you'
  rp.content 'Thank you'
  rp.sefurl 'thanks'
  rp.title 'thank you for registering'
end
