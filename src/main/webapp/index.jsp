<!DOCTYPE html>
<html lang="en">
<head>
<h1 style="font-family: mistral">Surendrakumar</h1>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swiggy Clone</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }
        .header {
            background-color: #fc8019;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 24px;
        }
        .search-bar {
            text-align: center;
            margin: 20px;
        }
        .search-bar input {
            width: 60%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .restaurant-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .restaurant-card {
            background: white;
            margin: 15px;
            padding: 15px;
            width: 300px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .restaurant-card img {
            width: 100%;
            border-radius: 10px;
        }
        .restaurant-info h2 {
            margin: 10px 0;
            color: #333;
        }
        .restaurant-info p {
            margin: 5px 0;
            color: #666;
        }
        .order-button {
            background-color: #fc8019;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .order-button:hover {
            background-color: #e56d0d;
        }
    </style>
</head>
<body>

    <div class="header">Swiggy Clone</div>

    <div class="search-bar">
        <input type="text" id="search" placeholder="Search for restaurants..." onkeyup="searchRestaurants()">
    </div>

    <div class="restaurant-container" id="restaurant-list">
        <!-- Restaurants will be added here dynamically -->
    </div>

    <script>
        // Sample restaurant data
        const restaurants = [
            { name: "Pizza Paradise", cuisine: "Pizza, Italian", rating: "4.5", location: "Bengaluru", image: "restaurant1.jpg" },
            { name: "Biryani Hub", cuisine: "Biryani, Mughlai", rating: "4.7", location: "Hyderabad", image: "restaurant2.jpg" },
            { name: "Tandoori Treats", cuisine: "North Indian, Tandoori", rating: "4.6", location: "Delhi", image: "restaurant3.jpg" },
            { name: "Sushi Express", cuisine: "Japanese, Sushi", rating: "4.3", location: "Mumbai", image: "restaurant4.jpg" }
        ];

        // Function to display restaurants
        function displayRestaurants() {
            const container = document.getElementById("restaurant-list");
            container.innerHTML = ""; // Clear previous content

            restaurants.forEach((restaurant, index) => {
                container.innerHTML += `
                    <div class="restaurant-card">
                        <img src="${restaurant.image}" alt="${restaurant.name}">
                        <div class="restaurant-info">
                            <h2>${restaurant.name}</h2>
                            <p>⭐ ${restaurant.rating} | ${restaurant.cuisine}</p>
                            <p>📍 ${restaurant.location}</p>
                            <button class="order-button" onclick="orderNow('${restaurant.name}')">Order Now</button>
                        </div>
                    </div>
                `;
            });
        }

        // Function for "Order Now" button
        function orderNow(restaurantName) {
            alert(`Your order from "${restaurantName}" has been placed! 🍽️`);
        }

        // Search functionality
        function searchRestaurants() {
            const searchValue = document.getElementById("search").value.toLowerCase();
            const filteredRestaurants = restaurants.filter(restaurant =>
                restaurant.name.toLowerCase().includes(searchValue) ||
                restaurant.cuisine.toLowerCase().includes(searchValue) ||
                restaurant.location.toLowerCase().includes(searchValue)
            );

            const container = document.getElementById("restaurant-list");
            container.innerHTML = "";

            filteredRestaurants.forEach(restaurant => {
                container.innerHTML += `
                    <div class="restaurant-card">
                        <img src="${restaurant.image}" alt="${restaurant.name}">
                        <div class="restaurant-info">
                            <h2>${restaurant.name}</h2>
                            <p>⭐ ${restaurant.rating} | ${restaurant.cuisine}</p>
                            <p>📍 ${restaurant.location}</p>
                            <button class="order-button" onclick="orderNow('${restaurant.name}')">Order Now</button>
                        </div>
                    </div>
                `;
            });
        }

        // Initialize the restaurant list
        displayRestaurants();
    </script>

</body>
</html>
