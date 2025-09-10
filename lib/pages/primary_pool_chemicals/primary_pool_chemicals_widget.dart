import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'primary_pool_chemicals_model.dart';
export 'primary_pool_chemicals_model.dart';

class PrimaryPoolChemicalsWidget extends StatefulWidget {
  const PrimaryPoolChemicalsWidget({
    super.key,
    required this.location,
    int? salt,
    int? alk,
    int? cal,
    int? cyan,
    double? ph,
  })  : this.salt = salt ?? 0,
        this.alk = alk ?? 0,
        this.cal = cal ?? 0,
        this.cyan = cyan ?? 0,
        this.ph = ph ?? 0.0;

  final String? location;
  final int salt;
  final int alk;
  final int cal;
  final int cyan;
  final double ph;

  static String routeName = 'primary_pool_chemicals';
  static String routePath = 'primaryPoolChemicals';

  @override
  State<PrimaryPoolChemicalsWidget> createState() =>
      _PrimaryPoolChemicalsWidgetState();
}

class _PrimaryPoolChemicalsWidgetState
    extends State<PrimaryPoolChemicalsWidget> {
  late PrimaryPoolChemicalsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryPoolChemicalsModel());

    _model.locationTextController ??=
        TextEditingController(text: widget.location);
    _model.locationFocusNode ??= FocusNode();

    _model.saltTextController ??= TextEditingController();
    _model.saltFocusNode ??= FocusNode();

    _model.phTextController ??= TextEditingController();
    _model.phFocusNode ??= FocusNode();

    _model.chlorineTextController ??= TextEditingController();
    _model.chlorineFocusNode ??= FocusNode();

    _model.alkalinityTextController ??= TextEditingController();
    _model.alkalinityFocusNode ??= FocusNode();

    _model.calciumTextController ??= TextEditingController();
    _model.calciumFocusNode ??= FocusNode();

    _model.cyanuricTextController ??= TextEditingController();
    _model.cyanuricFocusNode ??= FocusNode();

    _model.liquidChlorineTextController ??= TextEditingController();
    _model.liquidChlorineFocusNode ??= FocusNode();

    _model.chlorineTabsTextController ??= TextEditingController();
    _model.chlorineTabsFocusNode ??= FocusNode();

    _model.calHypoTextController ??= TextEditingController();
    _model.calHypoFocusNode ??= FocusNode();

    _model.clarifierTextController ??= TextEditingController();
    _model.clarifierFocusNode ??= FocusNode();

    _model.phosphateTextController ??= TextEditingController();
    _model.phosphateFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.sideBarNavModel,
                updateCallback: () => safeSetState(() {}),
                child: SideBarNavWidget(
                  homeBG: FlutterFlowTheme.of(context).primaryBackground,
                  homeIcon: Icon(
                    Icons.bar_chart_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  sheratonBG: FlutterFlowTheme.of(context).primaryBackground,
                  sheratonIcon: Icon(
                    FFIcons.ksheraton,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  pullmanColor: FlutterFlowTheme.of(context).primaryBackground,
                  pullmanIcon: Icon(
                    FFIcons.kaccor,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  roamIcon: FaIcon(
                    FontAwesomeIcons.truckPickup,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  reportIcon: Icon(
                    Icons.inbox,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  roamBG: FlutterFlowTheme.of(context).primaryBackground,
                  reportBG: FlutterFlowTheme.of(context).primaryBackground,
                  profileIcon: Icon(
                    Icons.account_circle_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  profileBG: FlutterFlowTheme.of(context).primaryBackground,
                  inventoryIcon: Icon(
                    Icons.inventory_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  inventoryColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  jobicon: Icon(
                    Icons.inventory_rounded,
                  ),
                  jobcolor: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderRadius: 8.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.arrow_back,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Add Chemicals',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 0.0, 16.0),
                                              child: Text(
                                                'Chemicals Added',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .locationTextController,
                                                focusNode:
                                                    _model.locationFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Location',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Location',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .locationTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.saltTextController,
                                                focusNode: _model.saltFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Salt (Bags)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Salt',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                keyboardType:
                                                    TextInputType.number,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .saltTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.phTextController,
                                                focusNode: _model.phFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Acid (L)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Acid',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                keyboardType:
                                                    const TextInputType
                                                        .numberWithOptions(
                                                        decimal: true),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .phTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .chlorineTextController,
                                                focusNode:
                                                    _model.chlorineFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'SDIC (Kg)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'SDIC',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .chlorineTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .alkalinityTextController,
                                                focusNode:
                                                    _model.alkalinityFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Buffer (Kg)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Buffer',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                keyboardType:
                                                    TextInputType.number,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .alkalinityTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .calciumTextController,
                                                focusNode:
                                                    _model.calciumFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Calcium (Kg)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Calcium',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .calciumTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .cyanuricTextController,
                                                focusNode:
                                                    _model.cyanuricFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Cyanuric (Kg)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Cyanuric',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .cyanuricTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 0.0, 16.0),
                                              child: Text(
                                                'Other Chemicals Added',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .liquidChlorineTextController,
                                                focusNode: _model
                                                    .liquidChlorineFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText:
                                                      'Liquid Chlorine (L)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Liquid Chlorine',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .liquidChlorineTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .chlorineTabsTextController,
                                                focusNode: _model
                                                    .chlorineTabsFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText:
                                                      'Chlorine Tabs (Ea)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Chlorine Tabs',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .chlorineTabsTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .calHypoTextController,
                                                focusNode:
                                                    _model.calHypoFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'CalHypo (Kg)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'CalHypo',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .calHypoTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .clarifierTextController,
                                                focusNode:
                                                    _model.clarifierFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Clarifier (L)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Clarifier',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .clarifierTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .phosphateTextController,
                                                focusNode:
                                                    _model.phosphateFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText:
                                                      'Phosphate Remover (L)',
                                                  alignLabelWithHint: false,
                                                  hintText: 'Phosphate Remover',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .phosphateTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 200.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 0.0, 90.0),
                                              child: Text(
                                                'Suggestions',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 0.0, 30.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  () {
                                                    if ((widget.location ==
                                                            'Ramada') &&
                                                        (widget.salt < 4500)) {
                                                      return valueOrDefault<
                                                          String>(
                                                        '${valueOrDefault<String>(
                                                          formatNumber(
                                                            (350000 / 1000) *
                                                                ((5000 -
                                                                        widget
                                                                            .salt
                                                                            .toDouble()) /
                                                                    1000) /
                                                                20,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: '#',
                                                            locale: '',
                                                          ),
                                                          '0',
                                                        )}  Bags of Salt',
                                                        '0',
                                                      );
                                                    } else if ((widget
                                                                .location ==
                                                            'Reef Resort') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (200000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sands Resort') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (150000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sea Temple Main Pool') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (3000000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way North') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (150000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way East') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (90000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way West') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (90000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Avenue of Palms') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (60000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way West') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (60000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way East') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (60000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way South') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (60000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Tony') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (50000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sharon') &&
                                                        (widget.salt < 4500)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          (35000 / 1000) *
                                                              ((5000 -
                                                                      widget
                                                                          .salt
                                                                          .toDouble()) /
                                                                  1000) /
                                                              20,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      )}  Bags of Salt';
                                                    } else {
                                                      return 'Not Applicable';
                                                    }
                                                  }(),
                                                  'Not Applicable',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 0.0, 95.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  () {
                                                    if ((widget.location ==
                                                            'Ramada') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Reef Resort') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        (((200000 / 10000) *
                                                                    20) *
                                                                ((valueOrDefault<
                                                                            double>(
                                                                          widget
                                                                              .ph,
                                                                          0.0,
                                                                        ) -
                                                                        7.6) *
                                                                    1000) /
                                                                10000)
                                                            .toString(),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sands Resort') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((150000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sea Temple Main Pool') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((3000000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way North') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((150000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way East') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way West') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Avenue of Palms') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((60000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way West') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way East') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way South') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Tony') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((50000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sharon') &&
                                                        (widget.ph > 7.6)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((30000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else {
                                                      return 'Not Applicable';
                                                    }
                                                  }(),
                                                  'Not Applicable',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 0.0, 30.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  () {
                                                    if ((widget.location ==
                                                            'Ramada') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  20) *
                                                              ((valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .ph,
                                                                        0.0,
                                                                      ) -
                                                                      7.6) *
                                                                  1000) /
                                                              10000,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '###.#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  L';
                                                    } else if ((widget
                                                                .location ==
                                                            'Reef Resort') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((200000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sands Resort') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((150000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sea Temple Main Pool') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((3000000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way North') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((150000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way East') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way West') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Avenue of Palms') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((60000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way West') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way East') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way South') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((90000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Tony') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((50000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sharon') &&
                                                        (widget.alk < 80)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((30000 / 10000) *
                                                                  15) *
                                                              ((100 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .alk
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else {
                                                      return 'Not Applicable';
                                                    }
                                                  }(),
                                                  'Not Applicable',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 0.0, 30.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  () {
                                                    if ((widget.location ==
                                                            'Ramada') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Reef Resort') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sands Resort') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sea Temple Main Pool') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way North') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way East') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way West') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Avenue of Palms') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way West') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way East') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way South') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Tony') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sharon') &&
                                                        (widget.cal < 180)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((350000 / 10000) *
                                                                  10) *
                                                              ((200 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cal
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else {
                                                      return 'Not Applicable';
                                                    }
                                                  }(),
                                                  'Not Applicable',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 0.0, 30.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  () {
                                                    if ((widget.location ==
                                                            'Ramada') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Reef Resort') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sands Resort') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sea Temple Main Pool') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way North') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way East') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Bougainvillea Way West') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Avenue of Palms') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way West') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way East') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Pandanus Way South') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Tony') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else if ((widget
                                                                .location ==
                                                            'Sharon') &&
                                                        (widget.cyan < 10)) {
                                                      return '${valueOrDefault<String>(
                                                        formatNumber(
                                                          ((450000 / 10000) *
                                                                  8) *
                                                              ((20 -
                                                                      valueOrDefault<
                                                                          double>(
                                                                        widget
                                                                            .cyan
                                                                            .toDouble(),
                                                                        0.0,
                                                                      )) /
                                                                  1000),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#',
                                                          locale: '',
                                                        ),
                                                        '###.#',
                                                      )}  Kg\'s';
                                                    } else {
                                                      return 'Not Applicable';
                                                    }
                                                  }(),
                                                  'Not Applicable',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await ResortPoolChemicalsTable()
                                                  .insert({
                                                'location':
                                                    valueOrDefault<String>(
                                                  widget.location,
                                                  'Error',
                                                ),
                                                'salt': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .saltTextController.text),
                                                  0,
                                                ),
                                                'acid': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .phTextController.text),
                                                  0,
                                                ),
                                                'SDIC': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .chlorineTextController
                                                      .text),
                                                  0,
                                                ),
                                                'buffer': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .alkalinityTextController
                                                      .text),
                                                  0,
                                                ),
                                                'calcium': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .calciumTextController
                                                      .text),
                                                  0,
                                                ),
                                                'cyanuric': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .cyanuricTextController
                                                      .text),
                                                  0,
                                                ),
                                                'liq_chlorine':
                                                    valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .liquidChlorineTextController
                                                      .text),
                                                  0,
                                                ),
                                                'chlorine_tabs':
                                                    valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .chlorineTabsTextController
                                                      .text),
                                                  0,
                                                ),
                                                'calhypo': valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .calHypoTextController
                                                      .text),
                                                  0,
                                                ),
                                                'clarifier':
                                                    valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .clarifierTextController
                                                      .text),
                                                  0,
                                                ),
                                                'phosphate':
                                                    valueOrDefault<int>(
                                                  int.tryParse(_model
                                                      .phosphateTextController
                                                      .text),
                                                  0,
                                                ),
                                              });

                                              context.pushNamed(
                                                  HomePageWidget.routeName);
                                            },
                                            text: 'Submit',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmallIsCustom,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (Theme.of(context).brightness ==
                                          Brightness.dark)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setDarkModeSetting(
                                                context, ThemeMode.light);
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 12.0, 24.0, 12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Switch to Light Mode',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                  Container(
                                                    width: 80.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.9, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        2.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .wb_sunny_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.9, 0.0),
                                                          child: Container(
                                                            width: 36.0,
                                                            height: 36.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x430B0D0F),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                              shape: BoxShape
                                                                  .rectangle,
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
                              ],
                            ),
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
    );
  }
}
