// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.machine_learning_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_MachineLearningServerRouter(_MachineLearningServer service) {
  final router = Router();
  router.add('POST', r'/', service.predict);
  return router;
}
