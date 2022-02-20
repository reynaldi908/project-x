import 'package:duplicate_app/components/app_bar_detail_copy_widget.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_detail_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateOrderPageWidget extends StatefulWidget {
  const CreateOrderPageWidget({
    Key key,
    this.foodId,
    this.cookName,
  }) : super(key: key);

  final DocumentReference foodId;
  final String cookName;

  @override
  _CreateOrderPageWidgetState createState() => _CreateOrderPageWidgetState();
}

class _CreateOrderPageWidgetState extends State<CreateOrderPageWidget> with TickerProviderStateMixin {
  TextEditingController notesController;
  int countControllerValue;
  TextEditingController promoCodeController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
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

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values.where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    notesController = TextEditingController();
    promoCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FoodRecord>(
      stream: FoodRecord.getDocument(widget.foodId),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: LinearProgressIndicator(
              color: FlutterFlowTheme.of(context).inactiveText,
            ),
          );
        }
        final createOrderPageFoodRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: SafeArea(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppBarDetailCopyWidget(
                        title: 'Order details',
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: AuthUserStreamWidget(
                                  child: Text(
                                    'Great Choice ${currentUserDisplayName}!',
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Text(
                                  'You are making an order for ${createOrderPageFoodRecord.name} by your neighbor ${widget.cookName}',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 150,
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<FoodPhotoRecord>>(
                                  stream: queryFoodPhotoRecord(
                                    queryBuilder: (foodPhotoRecord) => foodPhotoRecord.where('food_id', isEqualTo: createOrderPageFoodRecord.reference),
                                    singleRecord: true,
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
                                    List<FoodPhotoRecord> imageFoodPhotoRecordList = snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final imageFoodPhotoRecord = imageFoodPhotoRecordList.isNotEmpty ? imageFoodPhotoRecordList.first : null;
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        imageFoodPhotoRecord.photoUrl,
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height * 1,
                                        fit: BoxFit.cover,
                                      ),
                                    ).animated([animationsMap['imageOnPageLoadAnimation']]);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          createOrderPageFoodRecord.name,
                                          style: FlutterFlowTheme.of(context).title2,
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'portion',
                                                style: FlutterFlowTheme.of(context).bodyText2,
                                              ),
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(25),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: FlutterFlowTheme.of(context).tertiaryColor,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: FlutterFlowCountController(
                                                    decrementIconBuilder: (enabled) => FaIcon(
                                                      FontAwesomeIcons.minus,
                                                      color: enabled ? FlutterFlowTheme.of(context).textColor : Color(0xFFEEEEEE),
                                                      size: 20,
                                                    ),
                                                    incrementIconBuilder: (enabled) => FaIcon(
                                                      FontAwesomeIcons.plus,
                                                      color: enabled ? FlutterFlowTheme.of(context).primaryColor : Color(0xFFEEEEEE),
                                                      size: 20,
                                                    ),
                                                    countBuilder: (count) => Text(
                                                      count.toString(),
                                                      style: GoogleFonts.getFont(
                                                        'Roboto',
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    count: countControllerValue ??= 1,
                                                    updateCount: (count) => setState(() => countControllerValue = count),
                                                    stepSize: 1,
                                                    minimum: 1,
                                                    maximum: 6,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).containerBG,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                            child: TextFormField(
                              controller: notesController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Sauce on the side please!',
                                labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                hintText: 'Enter notes',
                                hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).containerBG,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).containerBG,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                            child: TextFormField(
                              controller: promoCodeController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Promo Code',
                                labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                hintText: 'Enter pormo code',
                                hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).containerBG,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).containerBG,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Text(
                                    'Cost',
                                    style: FlutterFlowTheme.of(context).title2,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Total Before',
                                        style: FlutterFlowTheme.of(context).subtitle2,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: AlignmentDirectional(1, 0),
                                          child: Text(
                                            formatNumber(
                                              createOrderPageFoodRecord.price,
                                              formatType: FormatType.custom,
                                              currency: 'Rp. ',
                                              format: '0,000',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context).bodyText2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Service Fee',
                                        style: FlutterFlowTheme.of(context).subtitle2,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: AlignmentDirectional(1, 0),
                                          child: Text(
                                            'Rp. 6,000',
                                            style: FlutterFlowTheme.of(context).bodyText2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Promo',
                                        style: FlutterFlowTheme.of(context).subtitle2,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: AlignmentDirectional(1, 0),
                                          child: Text(
                                            '-',
                                            style: FlutterFlowTheme.of(context).bodyText2,
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
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).containerBG,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Text(
                                    functions.orderTotal(6000, createOrderPageFoodRecord.price, countControllerValue),
                                    style: FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).containerBG,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Text(
                                    'Delivery Time',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.access_time_outlined,
                                        color: FlutterFlowTheme.of(context).textColor,
                                        size: 24,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                        child: Text(
                                          '[2.00 PM]',
                                          style: FlutterFlowTheme.of(context).subtitle2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: FlutterFlowTheme.of(context).textColor,
                                        size: 24,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                        child: Text(
                                          '[Monday, 20 Oct 2021 (in 2 days)]',
                                          style: FlutterFlowTheme.of(context).subtitle2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Make Payment',
                            options: FFButtonOptions(
                              width: 100,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).tertiaryColor,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
