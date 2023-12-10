import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Booking Screen"),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(24),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: ListView(children: [
                    TextFormField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Full name',
                        hintText: 'Enter full name',
                        prefixIcon: Icon(Icons.person_2_outlined),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      width: 20,
                      height: 30,
                    ),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      width: 20,
                      height: 30,
                    ),
                    TextFormField(
                      controller: phone,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        if (!RegExp(r'^\d{9,13}$').hasMatch(value)) {
                          return 'Invalid format';
                        }
                        ;
                      },
                    ),
                    const SizedBox(
                      width: 20,
                      height: 30,
                    ),
                    TextFormField(
                      controller: city,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'City',
                        hintText: 'Enter your city',
                        prefixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your current city';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      width: 20,
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            padding: const EdgeInsets.all(24),
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.black),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: Text(
                                    '''
Full name: ${name.text}
Email: ${email.text}
Phone number: ${phone.text}
City: ${city.text}                           
                                    ''',
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Confirmed'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        icon: const Icon(Icons.check),
                        label: const Text("Book Now!")),
                  ])),
            )));
  }
}
