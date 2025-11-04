import 'package:go_router/go_router.dart';
import '../features/home/home_page.dart';
import '../features/order/order_page.dart';
import '../features/order/order_detail_page.dart';
import '../features/profile/profile_page.dart';
import '../features/maps/maps_page.dart';

class AppRouter {
  GoRouter get router => GoRouter(
        routes: [
          GoRoute(path: '/', builder: (context, _) => const HomePage()),
          GoRoute(path: '/order', builder: (context, _) => const OrderPage()),
          GoRoute(
              path: '/order/:id',
              builder: (context, state) =>
                  OrderDetailPage(orderId: state.pathParameters['id']!)),
          GoRoute(path: '/profile', builder: (context, _) => const ProfilePage()),
          GoRoute(path: '/maps', builder: (context, _) => const MapsPage()),
        ],
      );
}
