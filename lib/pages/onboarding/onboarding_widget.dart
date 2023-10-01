import '/components/button/button_widget.dart';
import '/components/onboarding_gradient_component/onboarding_gradient_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_model.dart';
export 'onboarding_model.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  late OnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                        child: PageView(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            wrapWithModel(
                              model: _model.onboardingGradientComponentModel1,
                              updateCallback: () => setState(() {}),
                              child: OnboardingGradientComponentWidget(
                                text1: 'MEET YOUR COACH,',
                                text2: 'START YOUR JOURNEY',
                                image:
                                    'https://www.greatestphysiques.com/wp-content/uploads/2022/09/201134611_483207166237561_5502985738391641560_n.jpg',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.onboardingGradientComponentModel2,
                              updateCallback: () => setState(() {}),
                              child: OnboardingGradientComponentWidget(
                                text1: 'CREATE A WORKOUT PLAN',
                                text2: 'TO STAY FIT',
                                image:
                                    'https://www.wheninmanila.com/wp-content/uploads/2019/10/20-Raisa-Ver-Bibal.jpeg',
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model:
                                      _model.onboardingGradientComponentModel3,
                                  updateCallback: () => setState(() {}),
                                  child: OnboardingGradientComponentWidget(
                                    text1: 'ACTION IS THE',
                                    text2: 'KEY TO ALL ACCESS',
                                    image:
                                        'https://www.rappler.com/tachyon/2021/05/one-championship-Denice-Zamboanga.jpg',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.buttonModel,
                                    updateCallback: () => setState(() {}),
                                    child: ButtonWidget(
                                      btnText: 'Start Now',
                                      btnWidth: 150,
                                      btnAction: () async {
                                        context.pushNamed('InfoForm');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 40.0, 40.0, 40.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2.0,
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 16.0,
                              dotHeight: 4.0,
                              dotColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primary,
                              paintStyle: PaintingStyle.fill,
                            ),
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
      ),
    );
  }
}
