import 'package:flutter/material.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/views/about/about_view.dart';
import 'package:myfirstapp/views/destination_view/destination_view.dart';
import 'package:myfirstapp/views/destination_view/destination_view2.dart';
import 'package:myfirstapp/views/gallery/gallery_view.dart';
import 'package:myfirstapp/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case DestinationRoute:
      return _getPageRoute(DestinationView());
    case DestinationRoute2:
      return _getPageRoute(DestinationView2());
    default:
      return _getPageRoute(PhotosView());

  }
}

PageRoute _getPageRoute (Widget child){
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({required this.child}) : super(
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) => child,
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
      ) => FadeTransition(opacity: animation, child: child,),
  );
}