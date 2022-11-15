void main(List<String> args) {
  introduction(name: 'Abdullah', age: 24, home: 'Makkah');
}

introduction({String? name, String? home, int? age}) {
  print('Hello tuwaiq im $name and my old $age im comming from $home');
}
