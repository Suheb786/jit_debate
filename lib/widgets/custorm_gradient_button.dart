import 'package:flutter/material.dart';
import 'package:jit_debate/constents/colors.dart';

class CustomGradientButton extends StatelessWidget {
  final String btnTxt1;
  final String btnTxt2;
  final String imagePath;
  final void Function()? onTap;

  CustomGradientButton({
    required this.btnTxt1,
    required this.btnTxt2,
    required this.imagePath,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 12,
        primary: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [grdntColor1, grdntColor2],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: double.infinity,
          height: 150,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(imagePath),
              ),
              Text(
                btnTxt1,
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'Cubano',
                  fontSize: 30,
                ),
              ),
              Text(
                btnTxt2,
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'Cubano',
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
