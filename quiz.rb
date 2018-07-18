four_letter_countries = ["chad", "cuba", "greenland", "iraq", "mali", "oman", "india"]
four_letter_countries << "fiji"
four_letter_countries.insert(4, "iran")
four_letter_countries -= ["india"] 
four_letter_countries.reverse
four_letter_countries[2] = "togo"
four_letter_countries.insert(0, "laos")
four_letter_countries.reverse 
four_letter_countries.insert(0, "peru")
puts four_letter_countries
