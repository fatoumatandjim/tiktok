// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart' ;
import 'dart:math' as math;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter tiktok',
      debugShowCheckedModeBanner: false,
      home:MyStatefulWidget() ,
      
    );
  }
}

 

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Homepage(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
         const  BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
         const  BottomNavigationBarItem(
            icon: Icon(
              Icons.navigation,
              ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('../asset/image/tiktok_add.png',height: 20,),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: '',
          ),
        const  BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
         type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF141518),
        selectedItemColor: Colors.white,
        unselectedItemColor:Colors.grey,
         showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Homepage extends StatelessWidget {
 Homepage({ Key? key }) : super(key: key);
  final List<Map> tiktokItems =[
    {
    //  "video":"asset/video/aicha.MP4"
    "video":"asset/video/A1.MP4"
    },
  
       {
      "video":"asset/video/A2.MP4"
      },
      {
      "video":"asset/video/A4.MP4"
      },
       {
     "video":"asset/video/A3.MP4"
      },

  ];

  @override
  Widget build(BuildContext context) {
    return 
   CarouselSlider(
  options: CarouselOptions(
    height:double.infinity,
    scrollDirection: Axis.vertical,
    viewportFraction:1.0,),
    
    

  items: tiktokItems.map((item) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          color: const Color(0xFF141518),
          child: Stack(
            children: [
               VideoWidget(videoUrl: item['video']),
              const  Postcontent()
                      //   PostContent(),

          ],)


        );
      },
    );
  }).toList(),
);
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({ Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;
  

  @override
  _VideoWidgetState createState() => 
  _VideoWidgetState(videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
    late VideoPlayerController _controller;
     final String videoUrl;
     _VideoWidgetState(this.videoUrl);
  @override
   void initState() {
     super.initState();
     _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
         _controller.play();
         _controller.setLooping(true);
        setState(() {});
      });
   }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}


class Postcontent extends StatelessWidget {
  const Postcontent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        height: 100,
        padding:const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Icon(
              Icons.live_tv,
              color: Colors.white,
            ),
            SizedBox(width: 50,),
            Text('abonnement',
            style: TextStyle(color: Colors.white54 ,
             fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 20,),
             Text('pour toi',
            style: TextStyle(color: Colors.white54 ,
             fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 50,),
            Icon(
              Icons.search,
              color: Colors.white,
            ),

            

        ],),
        ),
        Expanded(  

        child: Row(children: [
          Expanded(child: Container(
           // color: Colors.red.withOpacity(0.5),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text(
                    '@zaharandjim_95',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Goein full send in Squaw Valley. #snow @snowboarding # extremesports #sendit #winter',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                       
                      Row(
                          children: const [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Original Sound - sidiki_diabate',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                        ],),
                        
          )),
          

          
          Container(
            width: 80,
            // color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                height: 80,
               child: Stack

               (alignment: AlignmentDirectional.bottomCenter,
                 children:  [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: 
                  const  CircleAvatar(
                   radius: 20,
                   backgroundImage:
                    AssetImage('asset/image/a.png'),
                    ),
                ),
                    Container(
                              padding: const  EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
               ],),
              ),
               SizedBox(
                height: 80,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  Icon(Icons.favorite,color: Colors.white.withOpacity(0.85),
                  size: 45,
                  ),
                 const   Text(
                              '80.0K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                  
                ],),
                
              ),

             SizedBox(
                height: 80,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children:const  [
                Image(
                  image: AssetImage('asset/image/c.png'),
                  height: 33,
                  ),
                  
                  
                 const   Text(
                              '1234',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                  
                ],),
                
              ),

               SizedBox(
                height: 80,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children:const [
                  Image(
                  image: AssetImage('asset/image/partage.png'),
                  height: 33,
                  ),
                 const   Text(
                              '234K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                  
                ],),
                
              ),
              
                const AnimatedLogo(),

            ],
            ),
            ),
        ],),
        ),
        ],
        );
  }
  }

 class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image:const  DecorationImage(
            image: AssetImage("asset/image/disque.jpg"),
          ),
        ),
        child: Image.asset('asset/image/log.png'),
      ),
    );
  }
}