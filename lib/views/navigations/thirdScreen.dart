import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../resources/images.dart';
import '../../utils/routes/rotes_named.dart';

class ThirdScreen extends StatefulWidget {
  final String parentScreen;
  const ThirdScreen({super.key, required this.parentScreen});
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<Map<String, String>> data = [
    {
      'imageUrl': '${Images.upperTeeth}',
      'text': 'Upper Teeth',
      'screen': RoutesName.textScreen
    },
    {
      'imageUrl': '${Images.lowerTeeth}',
      'text': 'Lower Teeth',
      'screen': RoutesName.textScreen
    }
    // Add more items here
  ];

  @override
  void initState() {
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Third screen');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        //   automaticallyImplyLeading: false, // Remove the back button
        title: Text(widget.parentScreen), // Add an app bar
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AlignedGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              // crossAxisSpacing:1,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, data[index]['screen']!,
                        arguments: data[index]['text']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust corner radius as needed
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      elevation: 2,
                      child: Column(
                        children: [
                          // Display image
                          SizedBox(
                            height: 15,
                          ),
                          Stack(//textScreen
                              children: [
                            Image.asset(
                              data[index]['imageUrl']!,
                              fit: BoxFit.cover, // Adjust image fit as needed
                              height: height * 0.16, // Adjust image height
                            ),
                            data[index]['screen'] == 'textScreen'
                                ? Positioned(
                                    right: 20,
                                    bottom: 0,
                                    child: ClipOval(
                                        child: Container(
                                            color: Colors.white,
                                            child: const Padding(
                                              padding: EdgeInsets.all(6.0),
                                              child: Icon(
                                                Icons.copy,
                                                size: 15,
                                              ),
                                            ))))
                                : const SizedBox.shrink()
                          ]),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index]['text']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void setScreen() {
    if (widget.parentScreen == "Emotional") {
      data = [
        {
          'imageUrl': Images.trappedEmotion,
          'text': 'Trapped Emotion',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.compound,
          'text': 'Compound (old:psychic Trauma)',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.heartWallEmotion,
          'text': 'Heart-Wall Emotion',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Pregnancy-Related") {
      data = [
        {
          'imageUrl': Images.motherBrain,
          'text': "Mother's Brain",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.motherSpirit,
          'text': "Mother's Spirit",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.motherBody,
          'text': "Mother's Body",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Intestines") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Small Intestine",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Ileocecal Valve",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Colon",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Brain") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Deep Structures",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Cerebrum",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Cranial Nerves",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Cerebellum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Vestibular System",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Brain Stem",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Cerebrospinal Fluid",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Pharmaceutical") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Medication",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Vaccination",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "OTC Medicine",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Recreational") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Depressant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Stimulant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Hallucinogen",
          'screen': RoutesName.textScreen
        },
      ];
    }
  }
}