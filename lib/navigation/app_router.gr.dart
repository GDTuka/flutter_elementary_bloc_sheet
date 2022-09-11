part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({GlobalKey<NavigatorState>? navigatorKey, required this.authGuard}) : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  Map<String, PageFactory> pagesMap = {};

  @override
  List<RouteConfig> routes = [];
}
