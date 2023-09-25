import 'package:flutter/material.dart';

class SecondButtonElevated extends  StatelessWidget {
  const SecondButtonElevated({super.key, required this.title, required this.page});

  final String title ;
  final Widget page ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
          shadowColor: const Color(0xffB7F5EA),
          backgroundColor: const Color(0xff5EE8D1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
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
          color: Color(0xff828585),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
