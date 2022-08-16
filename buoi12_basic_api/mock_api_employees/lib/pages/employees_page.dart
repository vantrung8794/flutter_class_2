import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mock_api_employees/models/employee.dart';

const endpoint = "https://62fb900babd610251c0beb30.mockapi.io";

class EmployeesPage extends StatefulWidget {
  const EmployeesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
  List<Employee> employees = [];

  @override
  void initState() {
    super.initState();
    // call api
    getEmployees();
  }

  void getEmployees() async {
    try {
      var response = await Dio().get('$endpoint/employees');
      final data = response.data;

      // Parsing data from raw data to Models.
      if (data is List) {
        data.forEach((element) {
          final map = element as Map<String, dynamic>;
          final employee = Employee.fromJson(map);
          employees.add(employee);
        });
        setState(() {});
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("hello");
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final item = employees[index];
          return Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            color: Color(0xFFF5F5F5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? '',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${item.age} years old',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF898989),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: employees.length,
      ),
    );
  }
}
