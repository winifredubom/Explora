import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageindex = 0;
  @override
  void initState(){
    _pageController = PageController(initialPage: 1);
        super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [Expanded(
                  child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _pageindex = index;
            });
          },
          itemCount: demo_data.length,
          itemBuilder: (context, index) => onBoardcontent(
      image: demo_data[index].image,
      title: demo_data[index].title,
      description: demo_data[index].description,
    )),
                ),
                Row(
                  children: [
                    ...List.generate(demo_data.length, (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageindex,
                      ),
                    )),
                    const Spacer(),
                    SizedBox(
                      width: 60,
                      height: 60,
    child: ElevatedButton(
    onPressed: () {
      _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    },
    child: Icon(Icons.arrow_forward_rounded , color: Colors.white,),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.black
      ),
    )
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key,  this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 5,
      width: isActive ? 13: 13,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.blueAccent.shade700,
        borderRadius: BorderRadius.all(Radius.circular(12)),

      ), duration: Duration(milliseconds: 300),
    );
  }
}

class Onboard{
  final String image, title, description;

  Onboard({
  required this.image,
  required this.title,
  required this.description,
});

}

final List<Onboard> demo_data =[
  Onboard(image: "images/first.jpg",
      title: "Explore the \nworld easily",
      description: "To your desire"),
  Onboard(image: "images/second.jpg",
      title: "Reach the \nunknown spot",
      description: "To your destination"),
  Onboard(image: "images/third.jpg",
      title: "Make connects \nwith explora",
      description: "To your dream trip")
];

class onBoardcontent extends StatelessWidget {
  const onBoardcontent({super.key,
    required this.image, required this.title, required this.description});

  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: Column(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Image.asset(image,
              height: 250,),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(title,
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(description,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey
              ),),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
