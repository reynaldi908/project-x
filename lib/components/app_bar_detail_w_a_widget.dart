import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarDetailWAWidget extends StatefulWidget {
  const AppBarDetailWAWidget({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _AppBarDetailWAWidgetState createState() => _AppBarDetailWAWidgetState();
}

class _AppBarDetailWAWidgetState extends State<AppBarDetailWAWidget> {
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
                      alignment: AlignmentDirectional(-1, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: FaIcon(
                          FontAwesomeIcons.chevronUp,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL('wa.me/6281350003833');
                        },
                        child: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.black,
                          size: 24,
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
