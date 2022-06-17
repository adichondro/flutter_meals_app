import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/categories_screen.dart';
import 'package:flutter_meals_app/screens/category_meals_screen.dart';
import 'package:flutter_meals_app/screens/filters_screen.dart';
import 'package:flutter_meals_app/screens/meal_detail_screen.dart';
import 'package:flutter_meals_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabsScreen(),
        CategoryMealsScreen.routeName: (context) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
        FiltersScreen.routeName: (context) => const FiltersScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //     if(settings.name == '/meal-detail'){
      //       return ...;
      //     }else if (settings.name == '/something-else'){
      //       return ...;
      //     }
      //     return MaterialPageRoute(builder: (context) => CategoriesScreen());
      // },

      //Untuk menampilkan halaman 404
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoriesScreen(),
        );
      },
    );
  }
}
