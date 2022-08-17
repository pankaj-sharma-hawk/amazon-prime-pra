import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  _SigninWidgetState createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {
  TextEditingController? emailIdTextFieldController;
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailIdTextFieldController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'lkg07g3j' /* Sign-In */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('Forgetpassword');
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '5eo3mkul' /* Forget password? */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F78AF),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: emailIdTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            '7lbyafey' /* Email Id */,
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
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
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
                              '3cmwcqac' /* Password */,
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
                                    FlutterFlowTheme.of(context).primaryBtnText,
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();

                            final user = await signInWithEmail(
                              context,
                              emailIdTextFieldController!.text,
                              passwordTextFieldController!.text,
                            );
                            if (user == null) {
                              return;
                            }

                            context.goNamedAuth('Home', mounted);
                          },
                          text: FFLocalizations.of(context).getText(
                            't0pp1h1l' /* Sign-In */,
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
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.95, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 40),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'tw3pqfdl' /* By Continuing, you agree to Am... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.amazon.in/gp/help/customer/display.html?nodeId=G2B9L3YR7LR8J4XP');
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'chxtibum' /* Condition of Use */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F78AF),
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '67vw75kp' /* and  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.amazon.in/gp/help/customer/display.html?nodeId=202136010');
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'we9iltv7' /* Privacy Notice */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F78AF),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Divider(
                          height: 5,
                          thickness: 5,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '6iluvuha' /* New to Amazon ? */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFD8C7C7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Signup');
                          },
                          text: FFLocalizations.of(context).getText(
                            '58k7gaw1' /* Create a new Amazon Account */,
                          ),
                          options: FFButtonOptions(
                            width: 340,
                            height: 40,
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'q9j4y463' /* Condition of Use */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 16,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'j58nz0tw' /* Privacy Notice */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 16,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '4qkpkmpt' /* Help */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0F78AF),
                            fontSize: 16,
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
                          'k8ibsa4y' /* 1996-2022, Amazon.com, inc.  */,
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
