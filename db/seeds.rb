# 10.times do |vineyard|
# 	Vineyard.create!(
# 		title: "My Vineyard #{vineyard}",
# 		about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# 		main_image: "https://via.placeholder.com/300x150"
# 	)
# end

10.times.create! do |wine|

	Wine.create!(
        title: "My-Wine #{wine}",
        vineyard_id: "2",
		variety: "Chenin",
		description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
		wine_image: image_tag("wine.jpeg"),
		price: "15"
	)
end