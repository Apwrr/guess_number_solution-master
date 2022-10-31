void main() {
  List<Person> myList = [];
  myList.add(Person(
    firstName: 'Promlert',
    lastName: 'Lovichit',
    age: 47,
  ));
  myList.add(Person(
    firstName: 'Prayuth',
    lastName: 'Chanocha',
    age: 65,
  ));
  myList.add(Person(
    firstName: 'AAA',
    lastName: 'BBB',
    age: 99,
  ));
  myList.add(Person.newFromCache(
    fName: 'กกก',
    lName: 'ขขข',
    age: 55,
  ));

  myList.forEach((item) {
    print('${item.firstName}');
  });
  var newList = myList.map((item) {
    return item.age;
  }).toList();
  print(newList);
}

class Person {
  final String firstName;
  final String lastName;
  final int age;
  final int x;

  // Constructor
  Person({
    required this.firstName,
    required this.lastName,
    required this.age,
  }) : x = 123; // Initializer

  // Factory constructor
  factory Person.newFromCache({
    required String fName,
    required String lName,
    required int age,
  }) {
    return Person(
      firstName: fName,
      lastName: lName,
      age: age,
    );
  }
}
