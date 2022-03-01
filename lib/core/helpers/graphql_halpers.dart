import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// init graphql client
final HttpLink httpLink = HttpLink(
  'http://localhost:5000/graphql',
  defaultHeaders: <String, String>{
    'Content-Type': 'application/json',
  },
);

// the auth link
final AuthLink authLink = AuthLink(
  getToken: () async => 'Bearer <access_token>',
);

final Link link = authLink.concat(httpLink);

// create a client value notifier
final ValueNotifier<GraphQLClient> graphqlClient = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    cache: GraphQLCache(store: HiveStore()),
    link: link,
  ),
);
