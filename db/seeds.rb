9.times do |vineyard|
	Vineyard.create!(
		title: "Mudhouse #{vineyard}",
		about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when 
				an unknown printer took a galley of type and scrambled it to make a type specimen book.
				It has survived not only five centuries, but also the leap into electronic typesetting,
				remaining essentially unchanged. It was popularised in the 1960s with the release of
				Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing
				software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it? It is a 
				long established fact that a reader will be distracted by the readable content of a page 
				when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less
				normal distribution of letters, as opposed to using 'Content here, content here', 
				making it look like readable English. Many desktop publishing packages and web 
				page editors now use Lorem Ipsum as their default model text, and a search for 
				'lorem ipsum' will uncover many web sites still in their infancy. Various versions
				have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",

		main_image: "https://via.placeholder.com/300x150"
	)
end
12.times do |wine|
	Wine.create!(
	vineyard_id: Vineyard.last.id,
	title: "Mud House#{wine}",
	wine_image: "https://via.placeholder.com/300x150", ##this is supposed to be active storage
	variety: "Sauvignon Blanc #{wine}",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse",
	price: "15.99",
	
	)
end