import 'package:parcel_box/my_flutter_app_icons.dart';

import '../../components/drop_down.dart';
import '../../components/icon_button.dart';
import '../../components/radio_button.dart';
import '../../components/theme.dart';
import '../../components/util.dart';
import '../../components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../pages/notifications.dart';
import '../../pages/navbar.dart';

class StudentInfoWidget extends StatefulWidget {
  const StudentInfoWidget({Key key}) : super(key: key);

  @override
  _StudentInfoWidgetState createState() => _StudentInfoWidgetState();
}

class _StudentInfoWidgetState extends State<StudentInfoWidget> {
  String dropDownValue;
  String radioButtonValue;
  TextEditingController emailAddressController1;
  TextEditingController emailAddressController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 243, 238, 253),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              MyFlutterApp.leftarrow,
                              color: Color(0xFF6A00A7),
                              size: 24,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF6A00A7),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Welcome,',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: InkWell(
                                onTap: () async {},
                                child: Text(
                                  ' Karim',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF6A00A7),
                                        fontSize: 32,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xFF6A00A7),
                          endIndent: 250,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: emailAddressController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    hintText: 'Your School',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          color: Color.fromARGB(
                                              255, 132, 126, 126),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(150, 132, 126, 126),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(150, 132, 126, 126),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 243, 238, 253),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 24, 0, 24),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: emailAddressController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    hintText: 'Your Study field',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          color: Color.fromARGB(
                                              255, 132, 126, 126),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(150, 132, 126, 126),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(150, 132, 126, 126),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 243, 238, 253),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 24, 0, 24),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'School year',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.1, 0),
                                child: FlutterFlowRadioButton(
                                  options:
                                      ['L1', 'L2', 'L3', 'M1', 'M2'].toList(),
                                  onChanged: (value) {
                                    setState(() => radioButtonValue = value);
                                  },
                                  optionHeight: 30,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  textPadding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  buttonPosition: RadioButtonPosition.left,
                                  direction: Axis.horizontal,
                                  radioButtonColor: Color(0xFF6A00A7),
                                  inactiveRadioButtonColor: Color(0x8A000000),
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.center,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                          child: Text(
                            'Which Campus you go to',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        FlutterFlowDropDown(
                          initialOption: dropDownValue ??= 'None',
                          options: ['Option 1'],
                          onChanged: (val) =>
                              setState(() => dropDownValue = val),
                          width: 134,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                          hintText: 'None',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 15,
                          ),
                          fillColor: Color(0xFF6A00A7),
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 10,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                          child: Text(
                            'Please attach your diploma',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'upload',
                          // icon: Icon(
                          //   Icons.arrow_back,
                          //   size: 15,
                          // ),
                          options: FFButtonOptions(
                            width: 134,
                            height: 50,
                            color: Color(0xFF6A00A7),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            // borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NavbarWidget(),
                                        ),
                                      );
                                    },
                                    text: 'continue',
                                    options: FFButtonOptions(
                                      width: 340,
                                      height: 56,
                                      color: Color(0xFF6A00A7),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      // borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
