import 'package:flutter/material.dart';
import 'dart:async';

class CountdownSignup extends StatefulWidget {
  const CountdownSignup({Key? key}) : super(key: key);
  @override
  _CountdownSignupState createState() => _CountdownSignupState();
}

class _CountdownSignupState extends State<CountdownSignup> {
  Duration _remainingTime = Duration(days: 10, hours: 0, minutes: 0, seconds: 0);
  
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_remainingTime.inSeconds > 0) {
            _remainingTime = _remainingTime - Duration(seconds: 1);
          } else {
            timer.cancel();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFF1976D2),
      child: Column(
        children: [
          Text(
            'Adquiere nuevas competencias y conocimientos',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          _buildCountdownTimer(),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF57C00)),
            child: Text('INSCRÍBETE AHORA', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildCountdownTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTimeBox('${_remainingTime.inDays}', 'DÍAS'),
        _buildTimeBox('${_remainingTime.inHours % 24}', 'HORAS'),
        _buildTimeBox('${_remainingTime.inMinutes % 60}', 'MIN'),
        _buildTimeBox('${_remainingTime.inSeconds % 60}', 'SEG'),
      ],
    );
  }

  Widget _buildTimeBox(String value, String unit) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFF57C00))),
          Text(unit, style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}