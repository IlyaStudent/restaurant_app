part of '../widgets.dart';

class AppNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const AppNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Colors.orange,
      selectedItemColor: Colors.greenAccent,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          label: context.localization.menu,
          icon: Icon(Icons.menu_book_rounded),
          backgroundColor: Colors.brown,
        ),
        BottomNavigationBarItem(
          label: context.localization.promotions,
          icon: Icon(Icons.percent_rounded),
          backgroundColor: Colors.brown,
        ),
        BottomNavigationBarItem(
          label: context.localization.home,
          icon: Icon(Icons.home_rounded),
          backgroundColor: Colors.brown,
        ),
        BottomNavigationBarItem(
          label: context.localization.cart,
          icon: Icon(Icons.shopping_cart_rounded),
          backgroundColor: Colors.brown,
        ),
        BottomNavigationBarItem(
          label: context.localization.profile,
          icon: Icon(Icons.person_rounded),
          backgroundColor: Colors.brown,
        ),
      ],
    );
  }
}
