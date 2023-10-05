import 'package:flutter/material.dart';

class SecondButtonElevated extends  StatelessWidget {
  const SecondButtonElevated({super.key, required this.title, required this.page , this.colorButton = const Color(0xff5EE8D1) , this.colorText =  const Color(0xff828585)});

  final String title ;
  final Widget page ;
  final Color colorButton ;
  final Color colorText ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            shadowColor: const Color(0xffFBF8FB),
            backgroundColor: colorButton,
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
          style:  TextStyle(
            color: colorText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
