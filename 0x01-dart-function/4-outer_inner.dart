void outer(String name, String id) {
  var [firstName, lastName] = name.split(' ');
  String inner(String firstName, String lastName, String id) =>
    'Hello Agent ${lastName.substring(0, 1)}.${firstName} your id is ${id}';
  print(inner(firstName, lastName, id));
}