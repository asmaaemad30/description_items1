import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CupCakes(),
    );
  }
}
class CupCakes extends StatefulWidget {
  const CupCakes({Key? key}) : super(key: key);

  @override
  State<CupCakes> createState() => _CupCakesState();
}

class _CupCakesState extends State<CupCakes> {
  int counter = 0;
  void addition () {
    setState(() {
      counter ++;
    });
  }
    void minus (){
      if (counter>0){
        setState(() {
          counter --;
        });
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,

        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.line_weight_sharp, color: Colors.black,

                ),
              )
            ],
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Home Page',
                  style: TextStyle(color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold)),
            )

        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_downward_rounded, color: Colors.black,),
          backgroundColor: Colors.white60,
          elevation: 0,
        ),
        body:
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'data:image/jpeg;base64,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'
                , width: 4000,
                height: 300,
              ),
              Text('Oroe Cup Cake',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                    fontSize: 35
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 30),
                child: Row(
                  children: [
                    Text('Ingredients',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                            backgroundColor: Colors.grey
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('''
                             ........................................................................................................................................................................................
                             ........................................................................................................................................................................................
                             ........................................................................................................................................................................................


                             '''
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 600),
                child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ElevatedButton(
                          onPressed:(){
                            minus();
                          },
                          child:Icon(Icons.minimize)
                      ),
                      Text('$counter',
                        style: TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                          onPressed:(){
                            addition();
                          },
                          child:Icon(Icons.add)
                      ),

                      ElevatedButton(onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,

                        ),
                        child: Text('Add To Bag', style: TextStyle(
                          color: Colors.black,

                        ),
                        ),
                      ),




                    ],
                  ),
              ),



            ]
        )

    );

  }
}
