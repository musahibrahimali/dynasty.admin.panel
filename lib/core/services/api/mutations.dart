// log in mutation
String loginAdminMutation = """
  mutation loginAdmin(\$input: LoginAdminInput!){
    loginAdmin(loginAdminInput: \$input){
      _id
      firstName
      lastName
      displayName
      isAdmin
      roles
      createdAt
      updatedAt
    }
  }
""";
