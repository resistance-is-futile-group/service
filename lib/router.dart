import 'package:service/echo.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

Router getRouter() {

  final app = Router();

  // TODO: replace with mount and other router
  app.all('/echo/', echoRequest);

  app.get('/<ignored|.*>',
      createStaticHandler('public', defaultDocument: 'index.html'));

  return app;
}