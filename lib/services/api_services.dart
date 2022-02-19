import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:dynasty_urban_style/index.dart';

// login admin
dynamic loginAdmin(userDetails) async {
  // create graphql client
  GraphQLClient _client = graphqlClient.value;

  // create a mutation
  QueryResult<dynamic> _resp = await _client.mutate(
    MutationOptions(
      document: gql(loginAdminMutation),
      variables: {
        "input": {
          "email": userDetails["email"],
          "password": userDetails["password"],
        },
      },
    ),
  );

  // return response
  if (_resp.hasException) {
    return null;
  } else if (_resp.data != null) {
    // convert the data to json
    dynamic _data = _resp.data!["loginAdmin"];
    // add the data to the admin layer
    admin = Admin.fromJson(_data);
    if (admin.uid != null) {
      // add the user id to shared preferances
      adminController.saveAdminUid();
    }

    return _data;
  }
}

// register admin
void registerAdmin() async {}
