import 'dart:io';

import 'package:args/args.dart';
import 'package:service/router.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

const _hostname = '0.0.0.0';

void main(List<String> args) async {
  var parser = ArgParser()
    ..addOption('port', abbr: 'p')
    ..addOption('host', abbr: 'h');
  var result = parser.parse(args);

  // respect the PORT environment variable
  var portStr = result['port'] ?? Platform.environment['PORT'] ?? '8080';
  var port = int.tryParse(portStr);

  final host = result['host'] ?? Platform.environment['HOST'] ?? _hostname;

  if (port == null) {
    stdout.writeln('Could not parse port value "$portStr" into a number.');
    // 64: command line usage error
    exitCode = 64;
    return;
  }

  final r = getRouter();

  var handler = const shelf.Pipeline().addMiddleware(shelf.logRequests())
      .addHandler(r.handler);

  var server = await io.serve(handler, host, port);
  print('Serving at http://${server.address.host}:${server.port}');
}

