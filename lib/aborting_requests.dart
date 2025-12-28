import 'dart:async';

import 'package:come/extended_http_client.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<Uint8List> httpStreamReadBytesWithGetMethod(Uri url) {
  return httpStreamReadBytes("GET", url);
}

Future<Uint8List> httpStreamReadBytes(String method, Uri url) async {
  final abortTrigger = Completer<void>();
  final client = extendedSpecHttpClient();

  final request = http.AbortableRequest(
    method,
    url,
    abortTrigger: abortTrigger.future,
  );

  // Send request
  final http.StreamedResponse response;
  try {
    response = await client.send(request);
  } on http.RequestAbortedException {
    // request aborted before it was fully sent
    rethrow;
  }

  late final Uint8List result;
  // Alternatively, using `asFuture`
  try {
    await response.stream.listen(
      (data) {
        result = Uint8List.fromList(data);
        // Whenever abortion is required:
        abortTrigger.complete();
      },
    ).asFuture<void>();
  } on http.RequestAbortedException {
    // request aborted whilst response bytes are being streamed
    rethrow;
  }
  // response bytes fully consumed
  return result;
}
