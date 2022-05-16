Place.destroy_all
Post.destroy_all

mexico = Place.new
mexico["name"] = "Mexico City"
mexico.save

charleston = Place.new
charleston["name"] = "Charleston"
charleston.save

beijing = Place.new
beijing["name"] = "Beijing"
beijing.save

place = Place.new
place["name"] = "Amsterdam"
place.save

post = Post.new
post["title"] = "Ate tacos"
post["description"] = "Checked out Ate tacos."
post["posted_on"] = "2022-01-01"
post["place_id"] = mexico["id"]
post.save

post = Post.new
post["title"] = "Lisa and Jim's Wedding"
post["description"] = "attended the wedding."
post["posted_on"] = "2022-01-01"
post["place_id"] = mexico["id"]
post.save

post = Post.new
post["title"] = "Ate tacos again"
post["description"] = "Checked out Ate tacos one more time."
post["posted_on"] = "2022-01-01"
post["place_id"] = mexico["id"]
post.save