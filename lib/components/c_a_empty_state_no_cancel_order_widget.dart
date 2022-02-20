import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAEmptyStateNoCancelOrderWidget extends StatefulWidget {
  const CAEmptyStateNoCancelOrderWidget({Key key}) : super(key: key);

  @override
  _CAEmptyStateNoCancelOrderWidgetState createState() =>
      _CAEmptyStateNoCancelOrderWidgetState();
}

class _CAEmptyStateNoCancelOrderWidgetState
    extends State<CAEmptyStateNoCancelOrderWidget> {
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
          'Good choice',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'canceled order made people sad',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
