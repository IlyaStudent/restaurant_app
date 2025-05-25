part of '../widgets.dart';

@RoutePage()
class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [MenuRoute(), PromotionsRoute(), HomeRoute(), CartRoute(), ProfileRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return AppNavBar(currentIndex: tabsRouter.activeIndex, onTap: tabsRouter.setActiveIndex);
      },
    );
  }
}
