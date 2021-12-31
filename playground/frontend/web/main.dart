import 'package:angular/angular.dart';
import 'package:smithy_playground/home_component.template.dart' as home;
import 'package:smithy_playground/service/transform_service.dart';

import 'main.template.dart' as ng;

void main() {
  runApp(home.HomeComponentNgFactory, createInjector: injector);
}

@GenerateInjector([
  ClassProvider(TransformerService),
])
final InjectorFactory injector = ng.injector$Injector;
