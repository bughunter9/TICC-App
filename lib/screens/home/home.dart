import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('COUNSELLING CELL')),
        ),
        //backgroundColor: Colors.transparent,
        body:Container(

                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/cover.webp"),
                fit: BoxFit.cover,
                ),
                ),


                child: Padding(
                  padding:const EdgeInsets.symmetric(vertical: 225.0),
                  child: Card(
                      color: Color(0xFF960D0A),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                        const ListTile(

                          title: Text('We are here for you',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                          ), ),
                          subtitle: Text('A safe space for you to discuss your emotions. Whenever you need help,we are listening.',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,

                            ),),
                          ),

                        Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        TextButton(
                        child: const Text('Session bookings' ,
                            style: TextStyle(color: Colors.white),

                          ),
                        onPressed: () {/* ... */},
                        ),
                          const SizedBox(width: 8),
                          ],
                          ),
              ],
              ),
              ),
                ),
              )
           );
            }


  }

