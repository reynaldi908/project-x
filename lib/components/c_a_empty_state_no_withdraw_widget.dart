import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAEmptyStateNoWithdrawWidget extends StatefulWidget {
  const CAEmptyStateNoWithdrawWidget({Key key}) : super(key: key);

  @override
  _CAEmptyStateNoWithdrawWidgetState createState() =>
      _CAEmptyStateNoWithdrawWidgetState();
}

class _CAEmptyStateNoWithdrawWidgetState
    extends State<CAEmptyStateNoWithdrawWidget> {
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
          'Please wait',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'your transaction on process',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
