import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoAppBarWidget extends StatefulWidget {
  const LogoAppBarWidget({Key key}) : super(key: key);

  @override
  _LogoAppBarWidgetState createState() => _LogoAppBarWidgetState();
}

class _LogoAppBarWidgetState extends State<LogoAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 40,
          decoration: BoxDecoration(),
          child: Container(
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
                      FontAwesomeIcons.chevronDown,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 137,
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Image.network(
                        '',
                        width: 137,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
