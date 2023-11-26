import 'package:flutter/material.dart';

void main() {
  runApp(exampleApp());
}

class exampleApp extends StatelessWidget {
  const exampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
                child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchBox(),
                    Divider(),
                    TopLocations(),
                    Divider(),
                    NearLocations(),
                    Divider(),
                    Suggestions(),
                    Divider(),
                    TopRated(),

                  ],
                ),
              ),
            )),
            BottomMenu(),
          ],
        ),
      ),
    );
  }
  Widget TopRated() => Container(
    child: Column(
      children: [
        TitleItem("Top Rated", "View all"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationItem("assets/images/foto5.jpg","Eminonu.","7km from you.","14tl"),
              LocationItem("assets/images/foto4.jpg","Besiktas.","9km from you.","24tl"),
              LocationItem("assets/images/foto3.jpg","Bebek.","6km from you.","6tl"),
              LocationItem("assets/images/foto4.jpg","Sultan Ahmet","20km from you.","0tl"),
              LocationItem("assets/images/foto5.jpg","GalataPort","2km from you.","800tl"),
            ],
          ),
        )
      ],
    ),
  );

  Widget Suggestions() => Container(
    child: Column(
      children: [
        TitleItem("Suggestions", "View all"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationItem("assets/images/foto1.jpg","Eminonu.","7km from you.","14tl"),
              LocationItem("assets/images/foto3.jpg","Besiktas.","9km from you.","24tl"),
              LocationItem("assets/images/foto4.jpg","Bebek.","6km from you.","6tl"),
              LocationItem("assets/images/foto4.jpg","Sultan Ahmet","20km from you.","0tl"),
              LocationItem("assets/images/foto5.jpg","GalataPort","2km from you.","800tl"),
            ],
          ),
        )
      ],
    ),
  );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/foto4.jpg","Eminonu.","7km from you.","14tl"),
                  LocationItem("assets/images/foto5.jpg","Besiktas.","9km from you.","24tl"),
                  LocationItem("assets/images/foto6.jpg","Bebek.","6km from you.","6tl"),
                  LocationItem("assets/images/foto1.jpg","Sultan Ahmet","20km from you.","0tl"),
                  LocationItem("assets/images/foto1.jpg","GalataPort","2km from you.","800tl"),



                ],
              ),
            )
          ],
        ),
      );

  Widget LocationItem(String photo, String title, String description, String price) => Container(
    width: 165,
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14.0),
            child: Image.asset(photo,width: 150,)),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 16,color: Colors.black),),
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.grey,size: 13,),
                    SizedBox(width: 2,),
                    Text(description,style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text(price,style: TextStyle(fontSize: 13,color: Colors.white),)),
          ],
        )
      ],
    ),
  );

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/foto1.jpg", "Keyvan A."),
                  StoryItem("assets/images/foto2.jpg", "Ahmet O."),
                  StoryItem("assets/images/foto3.jpg", "Ramazan S."),
                  StoryItem("assets/images/foto4.jpg", "Johny D."),
                  StoryItem("assets/images/foto5.jpg", "Al Pacino."),
                  StoryItem("assets/images/foto6.jpg", "Leo D."),
                ],
              ),
            )
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Icon(Icons.location_on,color: Colors.grey,),
               SizedBox(width: 10,),
               Text("Caferaga, Kadikoy",style: TextStyle(color: Colors.grey),),
             ],
           ),
           Icon(Icons.tune,color: Color.fromRGBO(236, 125, 87, 1),),
         ],
       ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70)
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 18,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, K1",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Explore Istanbul City",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.sunny,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(Icons.notifications),
                ),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 243, 243, 243), width: 1)),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighLightedItem(
              "Book",
              Icons.maps_ugc,
            ),
            BottomMenuItem("Chat", Icons.forum, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) {
      renk = Colors.black;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget HighLightedItem(
    String title,
    IconData icon,
  ) {
    var renk = Color.fromRGBO(236, 125, 87, 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 33,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}
