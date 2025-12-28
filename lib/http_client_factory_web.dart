//
// Created at 2025/12/14 08:34
//
// -- http_client_factory_web.dart

import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart';

Client httpClient() =>
    FetchClient(credentials: RequestCredentials.cors, streamRequests: true);
