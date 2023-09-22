import 'package:flutter/material.dart';

class ChangeAnimatedPadding extends StatefulWidget {
  const ChangeAnimatedPadding({super.key});

  @override
  State<ChangeAnimatedPadding> createState() => _ChangeAnimatedPaddingState();
}

class _ChangeAnimatedPaddingState extends State<ChangeAnimatedPadding> {

  List<String> characters=[
    "tom"  , "gery" , "cheese" , "spike"
  ];

  double paddingValue = 10 ;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Change Animated Padding',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              4,
              (index)  {
                return AnimatedPadding(
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 400),
                  padding: EdgeInsets.all(paddingValue),
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: isExpanded ?  Colors.blueGrey : Colors.grey,
                    ),
                    child: Image.asset('assets/images/${characters[index]}.png'),
                  ),
                );
              }
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            isExpanded = !isExpanded ;
            paddingValue = isExpanded ? 30 : 10;
          });
        },
        child:  Icon(
          isExpanded ?
          Icons.expand :
          Icons.expand_less,
          color: !isExpanded ? Colors.amber : Colors.red[500],
          size: 30,
        ),
      ),
    );
  }
}
