import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheese Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and hint of onion and pickle",
      imagePath: "lib/images/burgers/b_1.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Smoky BBQ Bacon Burger",
      description:
          "A grilled beef patty slathered in tangy BBQ sauce, topped with crispy bacon, melted pepper jack cheese, and a crunchy onion ring.",
      imagePath: "lib/images/burgers/b_2.png",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.99),
        Addon(name: "Jalapeños", price: 1.49),
        Addon(name: "Double Patty", price: 3.99),
      ],
    ),
    Food(
      name: "Mushroom Swiss Melt",
      description:
          "A savory beef patty covered in sautéed garlic mushrooms, melted Swiss cheese, and a rich truffle aioli on a toasted brioche bun.",
      imagePath: "lib/images/burgers/b_3.png",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Caramelized Onions", price: 1.49),
        Addon(name: "Extra Mushrooms", price: 1.99),
        Addon(name: "Add Bacon", price: 1.99),
      ],
    ),
    Food(
      name: "Spicy Jalapeño Fire",
      description:
          "A fire-grilled patty, spicy habanero jack cheese, sliced jalapeños, crisp lettuce, tomato, and a cooling chipotle aioli.",
      imagePath: "lib/images/burgers/b_4.png",
      price: 1.19,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Hot Sauce", price: 0.49),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Crispy Bacon", price: 1.99),
      ],
    ),
    Food(
      name: "The Ultimate Veggie",
      description:
          "A hearty black bean and quinoa patty, topped with fresh avocado, pico de gallo, lettuce, and a cilantro-lime crema on a whole wheat bun.",
      imagePath: "lib/images/burgers/b_5.png",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 1.99),
        Addon(name: "Sautéed Mushrooms", price: 1.49),
        Addon(name: "Add Guacamole", price: 2.99),
      ],
    ),

    //salads
    Food(
      name: "Classic Caesar Salad",
      description:
          "Crisp romaine lettuce, crunchy croutons, shaved parmesan cheese, and a creamy Caesar dressing. Add grilled chicken for a complete meal.",
      imagePath: "lib/images/salads/s1.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Shrimp (5 pcs)", price: 4.99),
        Addon(name: "Extra Parmesan", price: 0.99),
      ],
    ),
    Food(
      name: "Mediterranean Quinoa Bowl",
      description:
          "Fluffy quinoa, chickpeas, cucumber, cherry tomatoes, Kalamata olives, crumbled feta, and a lemon-herb vinaigrette.",
      imagePath: "lib/images/salads/s2.png",
      price: 9.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Halloumi", price: 3.49),
        Addon(name: "Artichoke Hearts", price: 1.99),
        Addon(name: "Extra Feta", price: 1.49),
      ],
    ),
    Food(
      name: "Spicy Southwest Salad",
      description:
          "Mixed greens, black beans, corn, avocado, cherry tomatoes, tortilla strips, and a zesty chipotle ranch dressing. A kick of flavor!",
      imagePath: "lib/images/salads/s3.png",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Spicy Grilled Chicken", price: 3.99),
        Addon(name: "Cotija Cheese", price: 1.49),
        Addon(name: "Jalapeño Slices", price: 0.99),
      ],
    ),
    Food(
      name: "Strawberry Spinach Salad",
      description:
          "Fresh spinach, sliced strawberries, candied pecans, red onion, goat cheese, and a light balsamic vinaigrette. A sweet and savory delight.",
      imagePath: "lib/images/salads/s4.png",
      price: 8.79,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Poached Pear", price: 2.49),
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Pecans", price: 1.29),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Crisp mixed greens, shredded carrots, red cabbage, mandarin oranges, crunchy wonton strips, and a toasted sesame dressing.",
      imagePath: "lib/images/salads/s5.png",
      price: 9.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Tofu", price: 2.99),
        Addon(name: "Grilled Shrimp", price: 4.99),
        Addon(name: "Edamame", price: 1.49),
      ],
    ),

    //drinks
    Food(
      name: "Sparkling Berry Blast",
      description:
          "A refreshing mix of sparkling water, muddled fresh berries (strawberry, blueberry, raspberry), and a hint of mint and lime.",
      imagePath: "lib/images/drinks/dr1.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Berries", price: 1.50),
        Addon(name: "Ginger Ale Base", price: 0.50),
        Addon(name: "Splash of Elderflower", price: 1.00),
      ],
    ),
    Food(
      name: "Tropical Sunset Smoothie",
      description:
          "A vibrant blend of mango, pineapple, coconut milk, and a touch of passionfruit, creating a smooth, creamy, and exotic escape.",
      imagePath: "lib/images/drinks/dr2.png",
      price: 6.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Boost", price: 2.00),
        Addon(name: "Spinach Boost", price: 1.00),
        Addon(name: "Chia Seeds", price: 0.75),
      ],
    ),
    Food(
      name: "Iced Caramel Macchiato",
      description:
          "Chilled espresso with vanilla syrup, milk, and a decadent drizzle of caramel sauce over ice. A classic coffeehouse favorite.",
      imagePath: "lib/images/drinks/dr3.png",
      price: 5.75,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot Espresso", price: 1.50),
        Addon(name: "Oat Milk Substitute", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.75),
      ],
    ),
    Food(
      name: "Green Goddess Juice",
      description:
          "A revitalizing blend of spinach, kale, apple, cucumber, and ginger. Packed with nutrients and a refreshing, earthy taste.",
      imagePath: "lib/images/drinks/dr4.png",
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Boost", price: 0.50),
        Addon(name: "Celery Stalk", price: 0.75),
        Addon(name: "Matcha Powder", price: 1.50),
      ],
    ),
    Food(
      name: "Minty Fresh Lemonade",
      description:
          "Our homemade lemonade infused with fresh muddled mint leaves, delivering a crisp, tangy, and incredibly refreshing zing.",
      imagePath: "lib/images/drinks/dr5.png",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sparkling Water", price: 0.50),
        Addon(name: "Add Strawberry Puree", price: 1.00),
        Addon(name: "Sugar-Free Option", price: 0.00),
      ],
    ),

    //desserts
    Food(
      name: "Molten Chocolate Lava Cake",
      description:
          "A rich, warm chocolate cake with a gooey, molten chocolate center, served with a scoop of vanilla bean ice cream and fresh berries.",
      imagePath: "lib/images/deserts/d1.png",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream Scoop", price: 1.99),
        Addon(name: "Chocolate Drizzle", price: 0.75),
        Addon(name: "Whiskey Caramel Sauce", price: 1.50),
      ],
    ),
    Food(
      name: "New York Style Cheesecake",
      description:
          "A classic, creamy New York style cheesecake on a graham cracker crust, served plain or with your choice of topping.",
      imagePath: "lib/images/deserts/d2.png",
      price: 7.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Compote", price: 1.50),
        Addon(name: "Blueberry Topping", price: 1.50),
        Addon(name: "Chocolate Fudge", price: 1.00),
      ],
    ),
    Food(
      name: "Apple Crumble with Custard",
      description:
          "Warm baked apples spiced with cinnamon and nutmeg, topped with a buttery oat crumble, served with a generous pour of creamy vanilla custard.",
      imagePath: "lib/images/deserts/d3.png",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Scoop of Vanilla Ice Cream", price: 1.99),
        Addon(name: "Extra Custard", price: 1.00),
        Addon(name: "Cinnamon Sugar Dusting", price: 0.50),
      ],
    ),
    Food(
      name: "Lemon Raspberry Tart",
      description:
          "A delicate, tangy lemon curd nestled in a crisp pastry shell, topped with fresh raspberries and a dusting of powdered sugar.",
      imagePath: "lib/images/deserts/d4.png",
      price: 7.25,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Dollop of Whipped Cream", price: 0.75),
        Addon(name: "Berry Coulis", price: 1.00),
        Addon(name: "Edible Flowers", price: 1.25),
      ],
    ),
    Food(
      name: "Decadent Brownie Sundae",
      description:
          "A warm, fudgy brownie topped with two scoops of vanilla ice cream, hot fudge, whipped cream, sprinkles, and a cherry.",
      imagePath: "lib/images/deserts/d5.png",
      price: 9.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Hot Fudge", price: 1.00),
        Addon(name: "Pecans", price: 1.50),
        Addon(name: "Change Ice Cream Flavor", price: 0.50),
      ],
    ),

    //sides
    Food(
      name: "Crispy Garlic Parmesan Fries",
      description:
          "Golden-fried crinkle-cut fries generously tossed with minced garlic, grated Parmesan cheese, and fresh parsley. Served with a side of creamy aioli.",
      imagePath: "lib/images/sides/si1.png",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Ketchup", price: 0.50),
        Addon(name: "Truffle Aioli Dip", price: 1.50),
        Addon(name: "Cheese Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Waffle Fries",
      description:
          "A healthier twist on a classic, these sweet potato waffle fries are perfectly seasoned and served with a side of smoky chipotle mayo.",
      imagePath: "lib/images/sides/si2.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Maple Drizzle", price: 0.75),
        Addon(name: "Ranch Dip", price: 0.75),
        Addon(name: "Extra Chipotle Mayo", price: 0.50),
      ],
    ),
    Food(
      name: "Classic Onion Rings",
      description:
          "Thick-cut, battered onion rings fried to a golden crisp. A perfect crunchy companion to any meal, served with our house dipping sauce.",
      imagePath: "lib/images/sides/si3.png",
      price: 5.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Mayo", price: 0.75),
        Addon(name: "BBQ Sauce", price: 0.50),
        Addon(name: "Large Size", price: 2.00),
      ],
    ),
    Food(
      name: "Mediterranean Couscous Salad",
      description:
          "Light and refreshing couscous mixed with diced cucumbers, tomatoes, red onion, fresh parsley, and a tangy lemon vinaigrette.",
      imagePath: "lib/images/sides/si4.png",
      price: 6.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Crumbled Feta", price: 1.49),
        Addon(name: "Kalamata Olives", price: 0.99),
        Addon(name: "Grilled Bell Peppers", price: 1.29),
      ],
    ),
    Food(
      name: "Crispy Fried Pickles",
      description:
          "Dill pickle slices lightly battered and fried until golden brown, offering a delightful tangy crunch. Served with a creamy ranch dipping sauce.",
      imagePath: "lib/images/sides/si5.png",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Ranch Dip", price: 0.75),
        Addon(name: "Spicy Remoulade", price: 1.00),
        Addon(name: "Hot Honey Drizzle", price: 0.99),
      ],
    ),
  ];
  List<Food> get menu => _menu;
}
