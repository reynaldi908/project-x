import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarDetailWidget extends StatefulWidget {
  const AppBarDetailWidget({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _AppBarDetailWidgetState createState() => _AppBarDetailWidgetState();
}

class _AppBarDetailWidgetState extends State<AppBarDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, -1),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 40,
          decoration: BoxDecoration(),
          alignment: AlignmentDirectional(0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
