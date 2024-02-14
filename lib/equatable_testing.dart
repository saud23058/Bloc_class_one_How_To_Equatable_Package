import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
class EquatableTestingState extends StatefulWidget {
  const EquatableTestingState({super.key});

  @override
  State<EquatableTestingState> createState() => _EquatableTestingStateState();
}

class _EquatableTestingStateState extends State<EquatableTestingState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Class 1'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Person person=const Person('Saud', 20);
          Person person1=const Person('Saud', 20);
          print(person==person1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age ;
  const Person(this.name, this.age);

  @override
  List<Object?> get props => [name,age];
}





/*
without equatable it will be very difficult to write if there are many objects like name or age etc
but the equatable package make it easy for us
class Person{
  final String name;
  final int age ;
  Person(this.name, this.age);

  bool operator==(Object other){
    return identical(this, other)||
    other is Person &&
    runtimeType==other.runtimeType &&
    name==other.name &&
    age==other.age;
  }
  int get hashCode=>name.hashCode^age.hashCode;
}
 */
