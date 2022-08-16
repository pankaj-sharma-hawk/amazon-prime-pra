import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController? emailTextFieldController;
  TextEditingController? nameTextFieldController;
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextFieldController = TextEditingController();
    nameTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
    passwordTextFieldVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/download_(4).png',
                    width: 150,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ag5lbb2t' /* Sign up with your mobile numbe... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 20,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: nameTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            '5erwv1ly' /* First and Last name */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD8C7C7),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD8C7C7),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: emailTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'koym4lc6' /* mobile number or email */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD8C7C7),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD8C7C7),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                        child: TextFormField(
                          controller: passwordTextFieldController,
                          obscureText: !passwordTextFieldVisibility,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'pv1llqb6' /* Create a Password */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8C7C7),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8C7C7),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordTextFieldVisibility =
                                    !passwordTextFieldVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                passwordTextFieldVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        final user = await createAccountWithEmail(
                          context,
                          emailTextFieldController!.text,
                          passwordTextFieldController!.text,
                        );
                        if (user == null) {
                          return;
                        }

                        final usersCreateData = createUsersRecordData(
                          displayName: nameTextFieldController!.text,
                        );
                        await UsersRecord.collection
                            .doc(user.uid)
                            .update(usersCreateData);

                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'Home'),
                          ),
                          (r) => false,
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'zuggmulc' /* Continue */,
                      ),
                      options: FFButtonOptions(
                        width: 340,
                        height: 40,
                        color: Color(0xFFFF7639),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ursubv54' /* Already have an account? */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'rf565gr7' /* Message and Data rates may app... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Html(
                        data:
                            ' <h5 style=\"color:white;\"> By creating an account , you agree to Amazon\'s <a href=\"https://www.w3schools.com\">Conditions</a> of Use and <a href=\"https://www.google.com\">Privacy Notice</a>.</h5>',
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 0.1,
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'dhl1nzrt' /* Condition of Use */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'tmp0jupu' /* Privacy Notice */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'a596cihk' /* Help */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.copyright_outlined,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 24,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '3kl61wlb' /* 1996-2022, Amazon.com, inc.  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
