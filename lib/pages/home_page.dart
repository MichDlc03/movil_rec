// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Cambio de color de fondo'),
//         ),
//         body: Center(
//           child: MyButton(),
//         ),
//       ),
//     );
//   }
// }

// class MyButton extends StatefulWidget {
//   @override
//   _MyButtonState createState() => _MyButtonState();
// }

// class _MyButtonState extends State<MyButton> {
//   Color _backgroundColor = Colors.white;

//   void _changeBackgroundColor() {
//     setState(() {
//       _backgroundColor = _backgroundColor == Colors.white ? Colors.blue : Colors.white;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: _backgroundColor,
//       child: Center(
//         child: RaisedButton(
//           onPressed: _changeBackgroundColor,
//           child: Text(
//             'Presiona para cambiar el color de fondo',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
