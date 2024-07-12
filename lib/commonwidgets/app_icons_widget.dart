import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';

class AppIconsWidget extends StatefulWidget{
  String buttonText;
  IconData iconToDisplay;

  VoidCallback? onButtonPress;

  AppIconsWidget({required this.buttonText, required this.iconToDisplay, this.onButtonPress});

  @override
  State<StatefulWidget> createState() {
    return _AppIconState();
  }
}

class _AppIconState extends State<AppIconsWidget> with SingleTickerProviderStateMixin{

  double _shrinkScale = 0.88;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
      duration: Duration(milliseconds: 5)
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        _controller.forward();
        await Future.delayed(Duration(milliseconds: 200), () {
          _controller.reverse();
          if(widget.onButtonPress != null){
            widget.onButtonPress!();
          }
        });
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 1.0,
            end: _shrinkScale,
          ).animate(_controller),
          child: Container(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorConstants.klogoOrangeColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, //New
                    blurRadius: 10.0,
                    offset: Offset(-4, 4))
              ],
            ),
            child: Column(
              children: [
                Icon(
                  widget.iconToDisplay,
                  color: ColorConstants.kWhiteColor,
                  size: 39,
                ),
                Text(widget.buttonText,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}