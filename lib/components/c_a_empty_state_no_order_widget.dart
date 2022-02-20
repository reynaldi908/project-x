import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAEmptyStateNoOrderWidget extends StatefulWidget {
  const CAEmptyStateNoOrderWidget({Key key}) : super(key: key);

  @override
  _CAEmptyStateNoOrderWidgetState createState() =>
      _CAEmptyStateNoOrderWidgetState();
}

class _CAEmptyStateNoOrderWidgetState extends State<CAEmptyStateNoOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.network(
          '',
          width: MediaQuery.of(context).size.width * 0.9,
          height: 180,
          fit: BoxFit.contain,
        ),
        Text(
          'Don\'t worry',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'you will get order soon',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
