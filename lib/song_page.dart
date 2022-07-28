import 'package:flutter/material.dart';
import 'package:music_app/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all( 25.0),
          child: Column(
            children: [
              //back button and menu button...........
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: NeuBox(child: Icon(Icons.arrow_back_ios,color: Colors.deepPurple,),)
                  ),
                  Text('P U R P L E    M U S I C', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),),
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: NeuBox(child: Icon(Icons.menu,color: Colors.deepPurple,),)
                  ),
                ],
              ),

              SizedBox(
                height: 25 ,
              ),


              // cover art , artist name, song name.............
              NeuBox(child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/jipal.jpeg')),
                  
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('SANNIDHYA | TONMOY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey[400]
                            ),),
                            const SizedBox(height: 4),
                            const Text('J I P A L',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),)
                          ],
                        ),
                        const Icon(Icons.favorite, color: Colors.red,),
                      ],
                    ),
                  )
                ],
              )
              ),

              const SizedBox(height: 25),

              // srat time , shuffle button , repeat, end ............
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0:00',style: TextStyle(color: Colors.black),),
                  Icon(Icons.shuffle,color: Colors.black,),
                  Icon(Icons.repeat,color: Colors.black,),
                  Text('3.56',style: TextStyle(color: Colors.black))
                ],
              ),
              const SizedBox(height: 15),
              // progress bar..........
              LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.5,
                progressColor: Colors.deepPurple,
              ),
              SizedBox(height: 30,),


              // three buttons..............

              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                        child: NeuBox(child: Icon(Icons.skip_previous_rounded,size: 35,color: Colors.deepPurple,)),),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child:  NeuBox(child: Icon(Icons.pause,size: 35,color: Colors.deepPurple,)),
                      ),
                    ),
                    Expanded(
                      child:  NeuBox(child: Icon(Icons.skip_next_rounded,size: 35,color: Colors.deepPurple,))),
                  ],

                ),
              ),
              const SizedBox(height:25),

              NeuBox(child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                       width: 40,
                       decoration:
                      BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage('lib/images/jipal.jpeg'),
                          fit: BoxFit.fill)
                      )),
                  ),
                  SizedBox(width: 10),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('JIPAL2.0',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('ABHI SAIKIA|SANNIDHYA')
                    ],
                  ),
                  SizedBox(width: 60,),
                  Text(' 3:58')
                ],
              ))

            ],
          ),
        ),
      )

    );
  }
}
