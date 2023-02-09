class Restaurant {
  final String resName;
  final String resAddress;
  final String resImage;
  final String resStatus;
  final List<RestaurantMenu> menu;
  static final List<Restaurant> restaurantInfo = [
    /// Herfi Restaurant Data
    Restaurant(
      resName: 'Herfi',
      resAddress: 'resAddress',
      resImage: 'images/harfi/harfi.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/harfi/herfi-meal.png',
          mealDescription: 'Gathering Meal 3',
          mealPrice: 'SAR 109.0',
        ),
        RestaurantMenu(
          mealImage: 'images/harfi/herfi-meal2.png',
          mealDescription: 'Gathering Meal 2',
          mealPrice: 'SAR 59.0',
        ),
        RestaurantMenu(
          mealImage: 'images/harfi/herfi-meal.png',
          mealDescription: 'Gathering Meal 1',
          mealPrice: 'SAR 99.0',
        ),
        RestaurantMenu(
          mealImage: 'images/harfi/herfi-meal2.png',
          mealDescription: 'Gathering Meal 2',
          mealPrice: 'SAR 59.0',
        ),
      ],
    ),

    /// Burger King Restaurant Data
    Restaurant(
      resName: 'Burger King',
      resAddress: 'resAddress',
      resImage: 'images/burgerking/burger-king.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/burgerking/burger-kigng-meal.png',
          mealDescription: 'Hot Chilli Double Beef Burger',
          mealPrice: 'SAR 21.0',
        ),
        RestaurantMenu(
          mealImage: 'images/burgerking/meal2.png',
          mealDescription: 'Chilli Chesse Bites - 8 Pcs',
          mealPrice: 'SAR 36.0',
        ),
        RestaurantMenu(
          mealImage: 'images/burgerking/meal3.png',
          mealDescription: 'King Saver Delox Meal',
          mealPrice: 'SAR 49.0',
        ),
        RestaurantMenu(
          mealImage: 'images/burgerking/meal4.png',
          mealDescription: 'Chicken Royale Meal Large',
          mealPrice: 'SAR 34.0',
        ),
        RestaurantMenu(
          mealImage: 'images/burgerking/meal5.png',
          mealDescription: 'Smokey BBQ  Meal Large',
          mealPrice: 'SAR 41.0',
        ),
      ],
    ),

    /// ULB Restaurant Data
    Restaurant(
      resName: 'ULB',
      resAddress: 'resAddress',
      resImage: 'images/ulb/ulb.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/ulb/ulb-meal1.png',
          mealDescription: 'Hot Chilli Double Beef Burger',
          mealPrice: 'SAR 21.0',
        ),
        RestaurantMenu(
          mealImage: 'images/ulb/ulb-meal2.png',
          mealDescription: 'Chilli Chesse Bites - 8 Pcs',
          mealPrice: 'SAR 36.0',
        ),
        RestaurantMenu(
          mealImage: 'images/ulb/ulb-meal3.png',
          mealDescription: 'King Saver Delox Meal',
          mealPrice: 'SAR 49.0',
        ),
        RestaurantMenu(
          mealImage: 'images/ulb/ulb-meal4.png',
          mealDescription: 'Chicken Royale Meal Large',
          mealPrice: 'SAR 34.0',
        ),
      ],
    ),

    /// Macdonald Restaurant Data
    Restaurant(
      resName: 'Macdonald',
      resAddress: 'resAddress',
      resImage: 'images/mac/mac.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/mac/mac-meal1.png',
          mealDescription: 'Hot Chilli Double Beef Burger',
          mealPrice: 'SAR 21.0',
        ),
        RestaurantMenu(
          mealImage: 'images/mac/mac-meal2.png',
          mealDescription: 'Chilli Chesse Bites - 8 Pcs',
          mealPrice: 'SAR 36.0',
        ),
        RestaurantMenu(
          mealImage: 'images/mac/mac-meal3.png',
          mealDescription: 'King Saver Delox Meal',
          mealPrice: 'SAR 49.0',
        ),
        RestaurantMenu(
          mealImage: 'images/mac/mac-meal4.png',
          mealDescription: 'Chicken Royale Meal Large',
          mealPrice: 'SAR 34.0',
        ),
      ],
    ),

    /// Pasta Cub Restaurant Data
    Restaurant(
      resName: 'Pasta Cub',
      resAddress: 'resAddress',
      resImage: 'images/pastacub/pasta-cup.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/pastacub/pasta-meal1.png',
          mealDescription: 'Hot Chilli Double Beef Burger',
          mealPrice: 'SAR 21.0',
        ),
        RestaurantMenu(
          mealImage: 'images/pastacub/pasta-meal2.png',
          mealDescription: 'Chilli Chesse Bites - 8 Pcs',
          mealPrice: 'SAR 36.0',
        ),
        RestaurantMenu(
          mealImage: 'images/pastacub/pasta-meal3.png',
          mealDescription: 'King Saver Delox Meal',
          mealPrice: 'SAR 49.0',
        ),
        RestaurantMenu(
          mealImage: 'images/pastacub/pasta-meal4.png',
          mealDescription: 'Chicken Royale Meal Large',
          mealPrice: 'SAR 34.0',
        ),
      ],
    ),

    /// Boga Restaurant Data
    Restaurant(
      resName: 'Boga',
      resAddress: 'resAddress',
      resImage: 'images/boga/boga.png',
      resStatus: 'resStatus',
      menu: [
        RestaurantMenu(
          mealImage: 'images/boga/boga-meal1.png',
          mealDescription: 'Hot Chilli Double Beef Burger',
          mealPrice: 'SAR 21.0',
        ),
        RestaurantMenu(
          mealImage: 'images/boga/boga-meal2.png',
          mealDescription: 'Chilli Chesse Bites - 8 Pcs',
          mealPrice: 'SAR 36.0',
        ),
        RestaurantMenu(
          mealImage: 'images/boga/boga-meal3.png',
          mealDescription: 'King Saver Delox Meal',
          mealPrice: 'SAR 49.0',
        ),
        RestaurantMenu(
          mealImage: 'images/boga/boga-meal4.png',
          mealDescription: 'Chicken Royale Meal Large',
          mealPrice: 'SAR 34.0',
        ),
      ],
    ),
  ];
  Restaurant({
    required this.resName,
    required this.resAddress,
    required this.resImage,
    required this.resStatus,
    required this.menu,
  });
}

class RestaurantMenu {
  final String mealImage;
  final String mealDescription;
  final String mealPrice;

  RestaurantMenu({
    required this.mealImage,
    required this.mealDescription,
    required this.mealPrice,
  });
}
