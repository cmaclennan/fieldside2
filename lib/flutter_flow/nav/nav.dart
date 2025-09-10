import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SignInWidget(),
          routes: [
            FFRoute(
              name: SignInWidget.routeName,
              path: SignInWidget.routePath,
              builder: (context, params) => SignInWidget(),
            ),
            FFRoute(
              name: SignUpWidget.routeName,
              path: SignUpWidget.routePath,
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: ForgotPasswordWidget.routeName,
              path: ForgotPasswordWidget.routePath,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: HomePageWidget.routeName,
              path: HomePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'homePage')
                  : HomePageWidget(),
            ),
            FFRoute(
              name: SeaTempleWidget.routeName,
              path: SeaTempleWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'sea_temple')
                  : SeaTempleWidget(),
            ),
            FFRoute(
              name: ProfilePageWidget.routeName,
              path: ProfilePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'profilePage')
                  : ProfilePageWidget(),
            ),
            FFRoute(
              name: SheratonWidget.routeName,
              path: SheratonWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'sheraton')
                  : SheratonWidget(),
            ),
            FFRoute(
              name: RoamingWidget.routeName,
              path: RoamingWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'roaming')
                  : RoamingWidget(),
            ),
            FFRoute(
              name: ReportsWidget.routeName,
              path: ReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ReportsWidget(),
            ),
            FFRoute(
              name: SheratonBackwashWidget.routeName,
              path: SheratonBackwashWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonBackwashWidget(),
            ),
            FFRoute(
              name: SheratonSaltwaterWidget.routeName,
              path: SheratonSaltwaterWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonSaltwaterWidget(),
            ),
            FFRoute(
              name: SheratonLogbookWidget.routeName,
              path: SheratonLogbookWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonLogbookWidget(),
            ),
            FFRoute(
              name: SheratonDashboardWidget.routeName,
              path: SheratonDashboardWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonDashboardWidget(),
            ),
            FFRoute(
              name: PrimaryPoolTestWidget.routeName,
              path: PrimaryPoolTestWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PrimaryPoolTestWidget(
                location: params.getParam(
                  'location',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: JobsWidget.routeName,
              path: JobsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'jobs')
                  : JobsWidget(),
            ),
            FFRoute(
              name: InventoryWidget.routeName,
              path: InventoryWidget.routePath,
              requireAuth: true,
              builder: (context, params) => InventoryWidget(),
            ),
            FFRoute(
              name: PrimaryPoolChemicalsWidget.routeName,
              path: PrimaryPoolChemicalsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PrimaryPoolChemicalsWidget(
                location: params.getParam(
                  'location',
                  ParamType.String,
                ),
                salt: params.getParam(
                  'salt',
                  ParamType.int,
                ),
                alk: params.getParam(
                  'alk',
                  ParamType.int,
                ),
                cal: params.getParam(
                  'cal',
                  ParamType.int,
                ),
                cyan: params.getParam(
                  'cyan',
                  ParamType.int,
                ),
                ph: params.getParam(
                  'ph',
                  ParamType.double,
                ),
              ),
            ),
            FFRoute(
              name: BlankWidget.routeName,
              path: BlankWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BlankWidget(),
            ),
            FFRoute(
              name: SheratonPooltestingWidget.routeName,
              path: SheratonPooltestingWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonPooltestingWidget(
                location: params.getParam(
                  'location',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: WholesaleWidget.routeName,
              path: WholesaleWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WholesaleWidget(
                customer: params.getParam(
                  'customer',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ReceiveStockWidget.routeName,
              path: ReceiveStockWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ReceiveStockWidget(),
            ),
            FFRoute(
              name: MasterCountWidget.routeName,
              path: MasterCountWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MasterCountWidget(),
            ),
            FFRoute(
              name: SheratonFreshwaterWidget.routeName,
              path: SheratonFreshwaterWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonFreshwaterWidget(),
            ),
            FFRoute(
              name: ChangePasswordWidget.routeName,
              path: ChangePasswordWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ChangePasswordWidget(),
            ),
            FFRoute(
              name: SeaTempleBackwashWidget.routeName,
              path: SeaTempleBackwashWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleBackwashWidget(),
            ),
            FFRoute(
              name: SeaTempleSparunWidget.routeName,
              path: SeaTempleSparunWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleSparunWidget(),
            ),
            FFRoute(
              name: SeaTempleReportsWidget.routeName,
              path: SeaTempleReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleReportsWidget(),
            ),
            FFRoute(
              name: SeaTempleTestingWidget.routeName,
              path: SeaTempleTestingWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleTestingWidget(
                unit: params.getParam(
                  'unit',
                  ParamType.String,
                ),
                owner: params.getParam(
                  'owner',
                  ParamType.String,
                ),
                test: params.getParam(
                  'test',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SeaTempleVillarunWidget.routeName,
              path: SeaTempleVillarunWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleVillarunWidget(),
            ),
            FFRoute(
              name: SeaTempleChemicalsWidget.routeName,
              path: SeaTempleChemicalsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleChemicalsWidget(
                unit: params.getParam(
                  'unit',
                  ParamType.String,
                ),
                salt: params.getParam(
                  'salt',
                  ParamType.int,
                ),
                alk: params.getParam(
                  'alk',
                  ParamType.int,
                ),
                cal: params.getParam(
                  'cal',
                  ParamType.int,
                ),
                cyan: params.getParam(
                  'cyan',
                  ParamType.int,
                ),
                ph: params.getParam(
                  'ph',
                  ParamType.double,
                ),
                owner: params.getParam(
                  'owner',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SeaTempleBookingsWidget.routeName,
              path: SeaTempleBookingsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleBookingsWidget(),
            ),
            FFRoute(
              name: SeaTempleLogbookWidget.routeName,
              path: SeaTempleLogbookWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleLogbookWidget(),
            ),
            FFRoute(
              name: SeaTempleStartdayWidget.routeName,
              path: SeaTempleStartdayWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleStartdayWidget(),
            ),
            FFRoute(
              name: SeaTempleUnitsdetailWidget.routeName,
              path: SeaTempleUnitsdetailWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleUnitsdetailWidget(
                unit: params.getParam(
                  'unit',
                  ParamType.String,
                ),
                clientOwner: params.getParam(
                  'clientOwner',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SeaTempleUnitsWidget.routeName,
              path: SeaTempleUnitsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleUnitsWidget(),
            ),
            FFRoute(
              name: JobCreateWidget.routeName,
              path: JobCreateWidget.routePath,
              requireAuth: true,
              builder: (context, params) => JobCreateWidget(),
            ),
            FFRoute(
              name: JobEditWidget.routeName,
              path: JobEditWidget.routePath,
              requireAuth: true,
              builder: (context, params) => JobEditWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
                location: params.getParam(
                  'location',
                  ParamType.String,
                ),
                seatempleUnit: params.getParam(
                  'seatempleUnit',
                  ParamType.String,
                ),
                otherLoc: params.getParam(
                  'otherLoc',
                  ParamType.String,
                ),
                details: params.getParam(
                  'details',
                  ParamType.String,
                ),
                status: params.getParam(
                  'status',
                  ParamType.String,
                ),
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: SheratonVillaReportsWidget.routeName,
              path: SheratonVillaReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SheratonVillaReportsWidget(),
            ),
            FFRoute(
              name: ResortPoolReportsWidget.routeName,
              path: ResortPoolReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ResortPoolReportsWidget(),
            ),
            FFRoute(
              name: OtherJobReportsWidget.routeName,
              path: OtherJobReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OtherJobReportsWidget(),
            ),
            FFRoute(
              name: SeaTemplePrivateReportsWidget.routeName,
              path: SeaTemplePrivateReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTemplePrivateReportsWidget(),
            ),
            FFRoute(
              name: WholesaleReportsWidget.routeName,
              path: WholesaleReportsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WholesaleReportsWidget(),
            ),
            FFRoute(
              name: SeaTempleChemicals2Widget.routeName,
              path: SeaTempleChemicals2Widget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleChemicals2Widget(
                unit: params.getParam(
                  'unit',
                  ParamType.String,
                ),
                salt: params.getParam(
                  'salt',
                  ParamType.int,
                ),
                alk: params.getParam(
                  'alk',
                  ParamType.int,
                ),
                cal: params.getParam(
                  'cal',
                  ParamType.int,
                ),
                cyan: params.getParam(
                  'cyan',
                  ParamType.int,
                ),
                ph: params.getParam(
                  'ph',
                  ParamType.double,
                ),
                owner: params.getParam(
                  'owner',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SeaTempleTesting2Widget.routeName,
              path: SeaTempleTesting2Widget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleTesting2Widget(
                unit: params.getParam(
                  'unit',
                  ParamType.String,
                ),
                owner: params.getParam(
                  'owner',
                  ParamType.String,
                ),
                test: params.getParam(
                  'test',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: MirageDashboardWidget.routeName,
              path: MirageDashboardWidget.routePath,
              builder: (context, params) => MirageDashboardWidget(),
            ),
            FFRoute(
              name: SeaTempleDashboardWidget.routeName,
              path: SeaTempleDashboardWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SeaTempleDashboardWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryText,
                  child: Image.asset(
                    'assets/images/fieldsidev2_logo_trn_wht.png',
                    fit: BoxFit.none,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
