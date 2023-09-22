import 'package:flutter/material.dart';

class ButtonElevated extends StatelessWidget {
  const ButtonElevated({super.key, required this.title, required this.page});

  final String title ;
  final Widget page ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            backgroundColor: Colors.blueGrey,
            shadowColor: Colors.purpleAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            )
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>page)
          );
        },
        child:  Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
