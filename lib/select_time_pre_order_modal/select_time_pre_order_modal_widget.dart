import '../backend/backend.dart';
import '../create_order_page/create_order_page_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTimePreOrderModalWidget extends StatefulWidget {
  const SelectTimePreOrderModalWidget({
    Key key,
    this.foodId,
  }) : super(key: key);

  final DocumentReference foodId;

  @override
  _SelectTimePreOrderModalWidgetState createState() => _SelectTimePreOrderModalWidgetState();
}

class _SelectTimePreOrderModalWidgetState extends State<SelectTimePreOrderModalWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      initialState: AnimationState(
        offset: Offset(0, 400),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values.where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FoodRecord>(
        stream: FoodRecord.getDocument(widget.foodId),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).inactiveText,
              ),
            );
          }
          final containerFoodRecord = snapshot.data;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0x33333333),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Text(
                            'Delivery Time',
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                        ),
                        Text(
                          dateTimeFormat('yMMMd', getCurrentTimestamp),
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: StreamBuilder<List<FoodScheduleRecord>>(
                              stream: queryFoodScheduleRecord(
                                queryBuilder: (queryFoodScheduleRecord) => queryFoodScheduleRecord.where('food_id', isEqualTo: containerFoodRecord.reference),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                  );
                                }
                                List<FoodScheduleRecord> rowFoodScheduleRecordList = snapshot.data;
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(rowFoodScheduleRecordList.length, (rowIndex) {
                                      final rowFoodScheduleRecord = rowFoodScheduleRecordList[rowIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                        child: Container(
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  dateTimeFormat('d', rowFoodScheduleRecord.deliveryTime),
                                                  style: FlutterFlowTheme.of(context).title2,
                                                ),
                                                Text(
                                                  dateTimeFormat('EEEE', rowFoodScheduleRecord.deliveryTime),
                                                  style: FlutterFlowTheme.of(context).title3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: StreamBuilder<List<FoodScheduleRecord>>(
                              stream: queryFoodScheduleRecord(
                                queryBuilder: (queryFoodScheduleRecord) => queryFoodScheduleRecord.where('food_id', isEqualTo: containerFoodRecord.reference),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                  );
                                }
                                List<FoodScheduleRecord> rowFoodScheduleRecordList = snapshot.data;
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(rowFoodScheduleRecordList.length, (rowIndex) {
                                      final rowFoodScheduleRecord = rowFoodScheduleRecordList[rowIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                        child: Container(
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  dateTimeFormat('Hm', rowFoodScheduleRecord.deliveryTime),
                                                  style: FlutterFlowTheme.of(context).title2,
                                                ),
                                                Text(
                                                  dateTimeFormat('a', rowFoodScheduleRecord.deliveryTime),
                                                  style: FlutterFlowTheme.of(context).title3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            'Last Order in ',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Text(
                                    '1 portion\'s left',
                                    style: FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                        child: Icon(
                                          Icons.remove_circle,
                                          color: FlutterFlowTheme.of(context).primaryColor,
                                          size: 22,
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context).title2.override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(context).textColor,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_circle,
                                          color: FlutterFlowTheme.of(context).primaryColor,
                                          size: 22,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 100),
                                      reverseDuration: Duration(milliseconds: 100),
                                      child: CreateOrderPageWidget(
                                        foodId: widget.foodId,
                                      ),
                                    ),
                                  );
                                },
                                text: 'Order',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: FlutterFlowTheme.of(context).secondaryColor,
                                  textStyle: FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context).tertiaryColor,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation']]),
                ),
              ],
            ),
          );
        });
  }
}
