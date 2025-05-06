import 'package:flutter/material.dart';

import 'bmi_result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedGender = "none";

  void _selectedGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  TextEditingController _age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.grey[300],
        title: Text(
          "BMI Calculation",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                //  this row used for male and female select.
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectedGender("Male"),
                          child: Card(
                            color: Colors.grey[300],
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 60,
                                  color:
                                      selectedGender == "Male"
                                          ? Colors.blue
                                          : Colors.grey,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        selectedGender == "Male"
                                            ? Colors.blue
                                            : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectedGender("Female"),
                          child: Card(
                            color: Colors.grey[300],
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 60,
                                  color:
                                      selectedGender == "Female"
                                          ? Colors.blue
                                          : Colors.grey,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        selectedGender == "Female"
                                            ? Colors.blue
                                            : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.grey[300],
                  elevation: 3,
                  child: SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Height",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("In"),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Ft"),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding:
                                      EdgeInsets
                                          .zero, // Remove internal padding
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Cm"),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding:
                                      EdgeInsets
                                          .zero, // Remove internal padding
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 40),
                          Center(
                            child: SizedBox(
                              width: 100,
                              child: TextFormField(
                                controller: _height,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  //   border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(10),
                                  //   ),
                                  //   fillColor: Colors.white,
                                  //   filled: true,
                                  hintText: "Enter Height",
                                  hintStyle: TextStyle(fontSize: 12),
                                ),
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                //  this row used for weight and age select.
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 190,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.grey[300],
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Weight",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  child: TextFormField(
                                    controller: _weight,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //   border: OutlineInputBorder(
                                      //     borderRadius: BorderRadius.circular(10),
                                      //   ),
                                      //   fillColor: Colors.white,
                                      //   filled: true,
                                      hintText: "Enter Weight",
                                      hintStyle: TextStyle(fontSize: 12),
                                    ),
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Kg",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Card(
                          color: Colors.grey[300],
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Age",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  child: TextFormField(
                                    controller: _age,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //   border: OutlineInputBorder(
                                      //     borderRadius: BorderRadius.circular(10),
                                      //   ),
                                      //   fillColor: Colors.white,
                                      //   filled: true,
                                      hintText: "Enter Age",
                                      hintStyle: TextStyle(fontSize: 12),
                                    ),
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Year",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      String gender = selectedGender!;
                      double h = double.parse(_height.text);
                      double w = double.parse(_weight.text);
                      double a = double.parse(_age.text);

                      if (_height.text.isNotEmpty ||
                          _weight.text.isNotEmpty ||
                          _age.text.isNotEmpty) {
                        if (selectedGender == "none") {
                        } else {
                          _bmicalculation(gender, h, w, a, context);
                          _height.clear();
                          _weight.clear();
                          _age.clear();
                          selectedGender = "none";
                        }
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "Calculate",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _bmicalculation(
  String gender,
  double h,
  double w,
  double a,
  BuildContext context,
) {
  double heightInMeter = h / 100;
  double bmi = w / (heightInMeter * heightInMeter);
  String BMI = bmi.toStringAsFixed(2);

  // Navigate to BmiResult and pass the BMI value
  Navigator.push(
    context,
    MaterialPageRoute(
      builder:
          (context) =>
              BmiResult(bmi: BMI, gender: gender, height: h, weight: w, age: a),
    ),
  );
}
