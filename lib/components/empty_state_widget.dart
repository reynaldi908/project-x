import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateWidget extends StatefulWidget {
  const EmptyStateWidget({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  _EmptyStateWidgetState createState() => _EmptyStateWidgetState();
}

class _EmptyStateWidgetState extends State<EmptyStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            '',
            width: MediaQuery.of(context).size.width * 0.8,
            height: 125,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              widget.title,
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Text(
              widget.description,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
