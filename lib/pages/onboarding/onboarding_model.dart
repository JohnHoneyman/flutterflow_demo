import '/components/button/button_widget.dart';
import '/components/onboarding_gradient_component/onboarding_gradient_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for OnboardingGradientComponent component.
  late OnboardingGradientComponentModel onboardingGradientComponentModel1;
  // Model for OnboardingGradientComponent component.
  late OnboardingGradientComponentModel onboardingGradientComponentModel2;
  // Model for OnboardingGradientComponent component.
  late OnboardingGradientComponentModel onboardingGradientComponentModel3;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    onboardingGradientComponentModel1 =
        createModel(context, () => OnboardingGradientComponentModel());
    onboardingGradientComponentModel2 =
        createModel(context, () => OnboardingGradientComponentModel());
    onboardingGradientComponentModel3 =
        createModel(context, () => OnboardingGradientComponentModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    onboardingGradientComponentModel1.dispose();
    onboardingGradientComponentModel2.dispose();
    onboardingGradientComponentModel3.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
