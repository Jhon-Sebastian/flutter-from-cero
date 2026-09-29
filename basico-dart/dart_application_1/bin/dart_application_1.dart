import 'dart:io';
import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'package:dart_application_1/ice_cream.dart';

void main(List<String> arguments) {
  // var name = "Sebastian";
  // var age = 25;
  // var price = 10.5;

  // print('Hola $name, tienes $age años y el precio es $price');
  // print('');
  // numericVariables();
  // print('');
  // stringVariables();
  // print('');
  // booleanVariables();
  // print('');
  // dynamicVariables();
  // print('');
  // tiposFijos();
  // print('');
  // convertions();
  // print('');
  // entryData();

  var chocolate = IceCream();
  chocolate.flavor = 'Chocolate';
  chocolate.sugarFree = true;
  chocolate.price = 5.99;
  chocolate.size = 'Large';

  chocolate.charge();
}

// variable numerica puede ser int, double o num
void numericVariables() {
  int age = 25;
  int negative = -10;
  int large = 0100000000;

  double price = 10.5;
  double negativePrice = -10.5;

  // Soportar ambos entero y decimal cuando se no sabe
  // Puede ser un double mas optimo para operaciones matemáticas
  num number = 10;
  num number2 = 10.5;

  print('----------Numbers----------');
  print('Edad: $age, Negativo: $negative, Grande: $large');
  print('Precio: $price, Precio Negativo: $negativePrice');
  print('Número: $number, Número2: $number2');
}

// variable string puede ser con comillas simples o dobles
void stringVariables() {
  String name = "Sebastian";
  String lastName = 'Gonzalez';
  String fullName = '$name $lastName';

  print('----------Strings----------');
  print('Nombre: $name, Apellido: $lastName, Nombre Completo: $fullName');
}

// variable booleana puede ser true o false
void booleanVariables() {
  bool isSeptember = true;
  bool isTrue = true;
  bool isFalse = false;

  print('----------Booleans----------');
  print('Es Verdadero: $isTrue, Es Falso: $isFalse, is $isSeptember');
}

// variable dynamic puede cambiar de tipo en tiempo de ejecución
void dynamicVariables() {
  dynamic name = "Sebastian";
  dynamic age = 25;
  dynamic price = 10.5;

  print('----------Dynamic----------');
  print('Nombre: $name, Edad: $age, Precio: $price');
}

// variable final y const no pueden cambiar de valor una vez asignado
void tiposFijos() {
  final String name = "Sebastina  22";
  final int age = 25;
  final double price = 10.5;

  // final se ejecuta en tiempo de ejecución
  // const se ejecuta en tiempo de compilación
  // const String country = "Colombia"; // ERROR: Const variables must be initialized with a constant value.
  // final String country = "Colombia"; // ERROR: Final variables must be initialized with a constant value.
  const String country = "Colombia";

  // name = "Jhon Doe"; ERORR: Cannot assign to the final variable 'name'.

  print('----------Tipos fijos Final / Const----------');
  print('Nombre: $name, Edad: $age, Precio: $price');
  print('País: $country');
}

void convertions() {
  String numericvalue = "31";
  int isNumber = int.parse(numericvalue);

  int stringValue = 31;
  String isString = stringValue.toString();

  print('----------Conversiones----------');
  print('Númeroooo: $isNumber');
  print('String: $isString');
}

void entryData() {
  print('----------Entrada de datos----------');
  print('Ingrese su edad: ');
  String age = stdin.readLineSync()!;

  const currentYear = 2026;
  int birthYear = currentYear - int.parse(age);
  print('Su año de nacimiento es: $birthYear');

  conditionalStatements(int.parse(age));
}

void conditionalStatements(int age) {
  if (age >= 18) {
    print('Es mayor de edad');
  } else {
    print('No es mayor de edad');
  }
}
