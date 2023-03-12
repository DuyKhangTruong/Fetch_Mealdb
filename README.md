# Fetch_Mealdb
The app uses SwiftUI, MVVM application architecture and [The Meal DB public API](https://www.themealdb.com/). The app utilizes the following 2 endpoints: 
- https://themealdb.com/api/json/v1/1/filter.php?c=Dessert for fetching the list of meals in the Dessert category
- https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID for fetching the meal details by its
ID.

## Requirements
The user should be shown the list of meals in the Dessert category, **sorted alphabetically**

When the user selects a meal, they should be taken to a detail view that includes:
- Meal name
- Origin (added feature)
- Hide or display tags if meal does have (added feature)
- Instructions
- Ingredients/measurements

## Screenshots
<p align="center">
    <img src="https://github.com/DuyKhangTruong/Fetch_Mealdb/blob/main/HomeScreen.png" width="200"> &nbsp;
    <img src="https://github.com/DuyKhangTruong/Fetch_Mealdb/blob/main/Pic1.png" width="200"> &nbsp;
    <img src="https://github.com/DuyKhangTruong/Fetch_Mealdb/blob/main/Pic2.png" width="200"> &nbsp;
</p>

## GIF
![](https://github.com/DuyKhangTruong/Fetch_Mealdb/blob/main/App_Test.gif)

## Technology
- iOS 14 and above
- SwiftUI
- KingFisher
