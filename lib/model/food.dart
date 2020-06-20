class Food{
  String name;
  String price;
  String imagePath;
  String weight;
  String calories;
  String vitamin;
  String total;

Food({this.name, this.price, this.imagePath, this.calories, this.vitamin, this.weight, this.total});
}

List foods = [

  Food(
    name: "Salmon Bowl",
    price: "Rs. 99.00",
    imagePath: "images/salmonbowl.png",
    weight: "300 G",
    calories: "267 CAL",
    vitamin: "A, B6 VIT",
      total: "Rs. 198"
  ),

  Food(
      name: "Spring Bowl",
      price: "Rs. 69.00",
      imagePath: "images/springbowl.png",
      weight: "200 G",
      calories: "280 CAL",
      vitamin: "A, B6 VIT",
    total: "Rs. 138"
  ),

  Food(
      name: "Avocado Bowl",
      price: "Rs. 49.00",
      imagePath: "images/avocadobowl.png",
      weight: "280 G",
      calories: "300 CAL",
      vitamin: "A, B6 VIT",
    total: "Rs. 98"
  ),

  Food(
      name: "Berry Bowl",
      price: "Rs. 59.00",
      imagePath: "images/berrybowl.png",
      weight: "250 G",
      calories: "280 CAL",
      vitamin: "A, B6 VIT",
    total: "Rs. 118"
  ),

  Food(
      name: "salmonbowl",
      price: "Rs. 149.00",
      imagePath: "images/salmonbowl.png",
      weight: "300 G",
      calories: "267 CAL",
      vitamin: "A, B6 VIT",
    total: "Rs. 298"
  ),

];