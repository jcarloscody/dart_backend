import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main(List<String> arguments) async {
  var server = await io.serve(handler, '0.0.0.0', 4466);

  print('site: ${server.address.address}/${server.port}');
}

FutureOr<Response> handler(Request request) {
  print(request);
  return Response(200, body: 'corpão');
}
