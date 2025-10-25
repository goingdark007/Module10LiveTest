import 'package:flutter/material.dart';

import '../utilities/contact_widget.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();

    final List<List<String>> contacts = [
      ['John Doe', '123-456-7890'],
      ['Jane Smith', '987-654-3210'],
      ['Bob Johnson', '555-555-5555'],
      ['Alice Brown', '111-222-3333'],
      ['Charlie White', '444-555-6666'],
    ];

    return Scaffold(

      appBar: AppBar(
        title: Text('Contact List',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        elevation: 8,
        shadowColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(10.0),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              SizedBox(height: 15),

              Form(

                key: formKey,

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    TextFormField(

                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                    ),

                    SizedBox(height: 10),

                    TextFormField(

                      decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      keyboardType: TextInputType.phone,

                    )

                  ],
                ),

              ),

              SizedBox(height: 15),

              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Add',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),

              SizedBox(height: 15),

              ListView.builder(

                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  itemCount: contacts.length,

                  itemBuilder: (context, index) {

                    return Contacts(
                      name: contacts[index][0],
                      phoneNumber: contacts[index][1],
                    );

                  }
              )

            ],

          ),
        ),
      ),

    );

  }

}
