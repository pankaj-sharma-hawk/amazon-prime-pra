import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagepageWidget extends StatefulWidget {
  const LanguagepageWidget({Key? key}) : super(key: key);

  @override
  _LanguagepageWidgetState createState() => _LanguagepageWidgetState();
}

class _LanguagepageWidgetState extends State<LanguagepageWidget> {
  String? radioButtonValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0B1415),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Mystuffmenu');
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xFFE0D7D7),
                        size: 30,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ymmohwxz' /* Choose Language  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 24,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.95, -0.95),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: StreamBuilder<List<LanguageRecord>>(
                    stream: queryLanguageRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<LanguageRecord> radioButtonLanguageRecordList =
                          snapshot.data!;
                      return FlutterFlowRadioButton(
                        options: radioButtonLanguageRecordList
                            .map((e) => e.lang!)
                            .toList()
                            .toList(),
                        onChanged: (value) {
                          setState(() => radioButtonValue = value);
                        },
                        optionHeight: 40,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFD8C7C7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final usersUpdateData = createUsersRecordData(
                      language: radioButtonValue,
                    );
                    await currentUserReference!.update(usersUpdateData);
                    setState(() => FFAppState().Alang = radioButtonValue!);
                    setAppLanguage(
                        context,
                        valueOrDefault<String>(
                          functions.langconv(radioButtonValue),
                          'English',
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Language Changed Succesfully',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Color(0xFF66C186),
                      ),
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'mx64ytwh' /* Submit */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
