import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'registration/registration1.dart';
import './pages/othersprofile.dart';

class HomePageWidget extends StatefulWidget {
  // const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-0.0, 64),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF3EEFD),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.25),
                      child: Image.asset(
                        'assets/images/99093-man-with-laptop.gif',
                        width: 334,
                        height: 247,
                        fit: BoxFit.fitHeight,
                      ).animated([animationsMap['imageOnPageLoadAnimation']]),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, 0.64),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationWidget(),
                      ),
                    );
                  },
                  text: 'get started',
                  options: FFButtonOptions(
                    width: 256,
                    height: 56,
                    color: Color(0xFF6A00A7),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                    // borderRadius: BorderRadius.only(),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.68),
                child: Text(
                  'i-connect',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Color.fromARGB(255, 42, 52, 59),
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.14, 0.39),
                child: Text(
                  'The best place for students to connect\nwith their classmates',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 42, 52, 59),
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
