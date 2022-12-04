import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.deepPurple,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardReusable(),
              CardReusable(),
              CardReusable(),
              CardReusable(),
              CardReusable(),
              CardReusable(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardReusable extends StatelessWidget {
  const CardReusable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          // color: Colors.red,
          ),

      /// main columns for the body
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const  BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmpfMGCfU0frSa4xsp31m5irELqnlZ_U-5Jg&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const   Text(
                      'Fundrasier',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.deepPurple),
                    ),
                    const    Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                    const   Text(
                      'Charity 5K Ract for a Cure',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const    SizedBox(
                      height: 10,
                    ),
                    const    Text(
                      'Brighten Up Your Next Video Call With Backgrounds From Pixar! | Disney Malaysia Visit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Icon(Icons.access_time,color: Colors.deepPurple,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('08:00 AM'),
                          ],
                        ),


                        Row(
                          children: const  [
                            Icon(Icons.location_on,color: Colors.deepPurple,),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Phnom Penh, Cambodia'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
