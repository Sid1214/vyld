// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import 'package:flutter/material.dart';
// import 'package:vyld/core/utils/image_const.dart';
// import 'package:vyld/core/utils/szie_utils.dart';
// import 'package:vyld/theme/theme_helper.dart';
// import 'package:vyld/widgets/appbar/appbar_button.dart';
// import 'package:vyld/widgets/appbar/appbar_image.dart';
// import 'package:vyld/widgets/appbar/appbar_subtitle1.dart';
// import 'package:vyld/widgets/appbar/custon_appbar.dart';
// import 'package:vyld/widgets/custom_elevated_button.dart';
// import 'package:vyld/widgets/custom_floating_%20button.dart';
// import 'package:vyld/widgets/custom_image_view.dart';
// import 'package:vyld/widgets/cutson_textform_field.dart';

// import '../theme/app_decoration.dart';
// import '../theme/custon_text.dart';
// import '../widgets/appbar/appbar_subtitle.dart';
// import '../widgets/appbar/appbar_title.dart';

// // ignore_for_file: must_be_immutable
// class ChatGroupScreen extends StatelessWidget {
//   ChatGroupScreen({Key? key}) : super(key: key);

//   TextEditingController messageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: appTheme.green400,
//             resizeToAvoidBottomInset: false,
//             appBar: _buildAppBar(context),
//             body: SizedBox(
//                 height: SizeUtils.height,
//                 width: double.maxFinite,
//                 child: Stack(alignment: Alignment.bottomCenter, children: [
//                   Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                           padding: EdgeInsets.symmetric(vertical: 58.v),
//                           decoration: AppDecoration.fillLightBlue,
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 SizedBox(height: 21.v),
//                                 SizedBox(
//                                     height: 540.v,
//                                     width: 320.h,
//                                     child: Stack(
//                                         alignment: Alignment.bottomCenter,
//                                         children: [
//                                           Align(
//                                               alignment: Alignment.topLeft,
//                                               child: Padding(
//                                                   padding: EdgeInsets.only(
//                                                       right: 263.h),
//                                                   child: Column(
//                                                       mainAxisSize:
//                                                           MainAxisSize.min,
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       children: [
//                                                         Text("Aug",
//                                                             style: CustomTextStyles
//                                                                 .titleLargeGray900),
//                                                         Text("15",
//                                                             style: theme
//                                                                 .textTheme
//                                                                 .titleLarge)
//                                                       ]))),
//                                           Align(
//                                               alignment: Alignment.bottomCenter,
//                                               child: Column(
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: [
//                                                     SizedBox(
//                                                         height: 439.v,
//                                                         width: 320.h,
//                                                         child: Stack(
//                                                             alignment: Alignment
//                                                                 .topRight,
//                                                             children: [
//                                                               Align(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .topLeft,
//                                                                   child: SizedBox(
//                                                                       height: 149.v,
//                                                                       width: 206.h,
//                                                                       child: Stack(alignment: Alignment.bottomLeft, children: [
//                                                                         Align(
//                                                                             alignment:
//                                                                                 Alignment.topCenter,
//                                                                             child: SizedBox(
//                                                                                 height: 98.v,
//                                                                                 width: 206.h,
//                                                                                 child: Stack(alignment: Alignment.bottomRight, children: [
//                                                                                   Align(
//                                                                                       alignment: Alignment.centerLeft,
//                                                                                       child: Container(
//                                                                                           margin: EdgeInsets.only(right: 23.h),
//                                                                                           padding: EdgeInsets.all(8.h),
//                                                                                           decoration: AppDecoration.fillCyanA.copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
//                                                                                           child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
//                                                                                             _buildFrame(context, johnThomas: "John Thomas"),
//                                                                                             SizedBox(height: 1.v),
//                                                                                             Text("Hey Squad! What’s up? 💥", style: theme.textTheme.titleSmall)
//                                                                                           ]))),
//                                                                                   CustomImageView(imagePath: ImageConstant.imgStickers, height: 40.adaptSize, width: 40.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 26.h)),
//                                                                                   CustomImageView(imagePath: ImageConstant.imgStickersWhiteA700, height: 40.adaptSize, width: 40.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 23.v)),
//                                                                                   Padding(padding: EdgeInsets.only(left: 62.h, right: 95.h), child: _buildFortyThree(context)),
//                                                                                   CustomImageView(imagePath: ImageConstant.imgTelevision, height: 40.adaptSize, width: 40.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 3.v, right: 48.h))
//                                                                                 ]))),
//                                                                         Align(
//                                                                             alignment:
//                                                                                 Alignment.bottomLeft,
//                                                                             child: Container(
//                                                                                 margin: EdgeInsets.only(right: 129.h),
//                                                                                 padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
//                                                                                 decoration: AppDecoration.fillCyanA.copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
//                                                                                 child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
//                                                                                   SizedBox(height: 1.v),
//                                                                                   Padding(padding: EdgeInsets.only(right: 1.h), child: _buildFrame1(context, alita: "Alita")),
//                                                                                   SizedBox(height: 3.v),
//                                                                                   Text("Hey John", style: theme.textTheme.titleSmall)
//                                                                                 ])))
//                                                                       ]))),
//                                                               Align(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .topRight,
//                                                                   child: Container(
//                                                                       margin: EdgeInsets.only(left: 74.h, top: 159.v),
//                                                                       padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
//                                                                       decoration: AppDecoration.fillPurpleA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL12),
//                                                                       child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
//                                                                         SizedBox(
//                                                                             height:
//                                                                                 1.v),
//                                                                         SizedBox(
//                                                                             width: 230
//                                                                                 .h,
//                                                                             child: Text("All good man, was quite busy, how’s\ngoing",
//                                                                                 maxLines: 2,
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                                 style: theme.textTheme.titleSmall!.copyWith(height: 1.20)))
//                                                                       ]))),
//                                                               _buildTelevision(
//                                                                   context),
//                                                               _buildLetsPlanSomethingSoon(
//                                                                   context)
//                                                             ])),
//                                                     SizedBox(height: 9.v),
//                                                     Align(
//                                                         alignment: Alignment
//                                                             .centerRight,
//                                                         child: Container(
//                                                             margin:
//                                                                 EdgeInsets.only(
//                                                                     left: 74.h),
//                                                             padding: EdgeInsets
//                                                                 .symmetric(
//                                                                     horizontal:
//                                                                         8.h,
//                                                                     vertical: 5
//                                                                         .v),
//                                                             decoration: AppDecoration
//                                                                 .fillPurpleA
//                                                                 .copyWith(
//                                                                     borderRadius:
//                                                                         BorderRadiusStyle
//                                                                             .customBorderTL12),
//                                                             child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .min,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   SizedBox(
//                                                                       height:
//                                                                           1.v),
//                                                                   SizedBox(
//                                                                       width:
//                                                                           230.h,
//                                                                       child: Text(
//                                                                           "All good man, was quite busy, how’s\ngoing",
//                                                                           maxLines:
//                                                                               2,
//                                                                           overflow: TextOverflow
//                                                                               .ellipsis,
//                                                                           style: theme
//                                                                               .textTheme
//                                                                               .titleSmall!
//                                                                               .copyWith(height: 1.20)))
//                                                                 ])))
//                                                   ]))
//                                         ])),
//                                 SizedBox(height: 49.v),
//                                 Align(
//                                     alignment: Alignment.centerRight,
//                                     child: Container(
//                                         height: 73.v,
//                                         width: 161.h,
//                                         decoration: BoxDecoration(
//                                             gradient: LinearGradient(
//                                                 begin: const Alignment(1, 1),
//                                                 end: const Alignment(0.06, 1),
//                                                 colors: [
//                                               appTheme.lightBlue5001,
//                                               appTheme.lightBlue5001
//                                                   .withOpacity(0)
//                                             ]))))
//                               ]))),
//                   _buildFortyFour(context),
//                   Align(
//                       alignment: Alignment.bottomRight,
//                       child: Container(
//                           width: 18.h,
//                           margin: EdgeInsets.only(right: 17.h, bottom: 180.v),
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 6.h, vertical: 1.v),
//                           decoration: AppDecoration.outlineGray900.copyWith(
//                               borderRadius: BorderRadiusStyle.roundedBorder6),
//                           child: Text("5",
//                               style:
//                                   CustomTextStyles.labelMediumGilroyBlack900)))
//                 ])),
//             floatingActionButton: _buildFloatingActionButton(context)));
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//         centerTitle: true,
//         title: Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.h),
//             decoration: AppDecoration.fillLightBlue,
//             child: Row(children: [
//               AppbarImage(
//                   imagePath: ImageConstant.imgRefresh,
//                   margin: EdgeInsets.only(left: 11.h, top: 27.v, bottom: 22.v)),
//               AppbarSubtitle(
//                   text: "Aug", margin: EdgeInsets.only(bottom: 57.v)),
//               AppbarTitle(
//                   text: "15", margin: EdgeInsets.only(top: 16.v, bottom: 33.v)),
//               Container(
//                   width: 69.h,
//                   margin: EdgeInsets.only(bottom: 1.v),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: fs.Svg(ImageConstant.imgGroup36),
//                           fit: BoxFit.cover)),
//                   child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         AppbarImage(
//                             imagePath: ImageConstant.imgClose,
//                             margin: EdgeInsets.only(top: 20.v),
//                             onTap: () {
//                               onTapClose(context);
//                             }),
//                         AppbarImage(
//                             imagePath: ImageConstant.imgVector742,
//                             margin: EdgeInsets.only(
//                                 left: 6.h, top: 2.v, bottom: 18.v))
//                       ])),
//               AppbarImage(
//                   imagePath: ImageConstant.imgProfilePhotos,
//                   margin: EdgeInsets.only(top: 14.v, bottom: 9.v)),
//               AppbarSubtitleOne(
//                   text: "VYLD Gang",
//                   margin: EdgeInsets.only(left: 8.h, top: 31.v, bottom: 28.v)),
//               AppbarImage(
//                   imagePath: ImageConstant.imgCloseGreenA400,
//                   margin: EdgeInsets.only(top: 17.v, bottom: 13.v),
//                   onTap: () {
//                     onBackPress(context);
//                   }),
//               AppbarImage(
//                   imagePath: ImageConstant.imgMaximize,
//                   margin: EdgeInsets.only(top: 8.v, bottom: 46.v)),
//               AppbarImage(
//                   imagePath: ImageConstant.imgMaximizeYellowA700,
//                   margin: EdgeInsets.only(left: 7.h, top: 50.v, bottom: 9.v)),
//               AppbarButton(
//                   margin: EdgeInsets.only(left: 46.h, top: 23.v, bottom: 18.v)),
//               AppbarImage(
//                   imagePath: ImageConstant.imgFrame12,
//                   margin: EdgeInsets.only(left: 8.h, top: 27.v, bottom: 22.v))
//             ])),
//         styleType: Style.bgFill);
//   }

//   /// Section Widget
//   Widget _buildTelevision(BuildContext context) {
//     return Align(
//         alignment: Alignment.bottomLeft,
//         child: Padding(
//             padding: EdgeInsets.only(right: 19.h),
//             child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   CustomImageView(
//                       imagePath: ImageConstant.imgTelevision,
//                       height: 40.adaptSize,
//                       width: 40.adaptSize,
//                       margin: EdgeInsets.only(right: 24.h)),
//                   SizedBox(height: 12.v),
//                   Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//                     CustomImageView(
//                         imagePath: ImageConstant.imgStickersWhiteA700,
//                         height: 40.adaptSize,
//                         width: 40.adaptSize,
//                         margin: EdgeInsets.only(bottom: 3.v)),
//                     CustomImageView(
//                         imagePath: ImageConstant.imgStickers,
//                         height: 40.adaptSize,
//                         width: 40.adaptSize,
//                         margin: EdgeInsets.only(left: 4.h, top: 3.v))
//                   ]),
//                   SizedBox(height: 102.v),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: SizedBox(
//                           height: 96.v,
//                           width: 117.h,
//                           child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Container(
//                                         margin: EdgeInsets.only(bottom: 16.v),
//                                         padding: EdgeInsets.all(8.h),
//                                         decoration: AppDecoration.fillCyanA
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .customBorderBL12),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               _buildFrame(context,
//                                                   johnThomas: "John Thomas"),
//                                               SizedBox(height: 1.v),
//                                               Text("Yes Pls!!",
//                                                   style: theme
//                                                       .textTheme.titleSmall)
//                                             ]))),
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.only(left: 62.h, right: 6.h),
//                                     child: _buildFortyThree(context))
//                               ])))
//                 ])));
//   }

//   /// Section Widget
//   Widget _buildLetsPlanSomethingSoon(BuildContext context) {
//     return Align(
//         alignment: Alignment.bottomCenter,
//         child: Padding(
//             padding: EdgeInsets.only(bottom: 104.v),
//             child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                       margin: EdgeInsets.only(right: 86.h),
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
//                       decoration: AppDecoration.fillCyanA.copyWith(
//                           borderRadius: BorderRadiusStyle.customBorderBL12),
//                       child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             _buildFrame1(context, alita: "Alita"),
//                             SizedBox(height: 2.v),
//                             Text("Hey John, when is the next party?",
//                                 style: theme.textTheme.titleSmall)
//                           ])),
//                   SizedBox(height: 10.v),
//                   CustomElevatedButton(
//                       width: 186.h,
//                       text: "Let’s Plan something soon.",
//                       alignment: Alignment.centerRight)
//                 ])));
//   }

//   /// Section Widget
//   Widget _buildFortyFour(BuildContext context) {
//     return Align(
//         alignment: Alignment.bottomCenter,
//         child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.only(left: 12.h, top: 660.v, bottom: 12.v),
//             child: IntrinsicWidth(
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                   Container(
//                       height: 69.v,
//                       width: 344.h,
//                       margin: EdgeInsets.only(left: 4.h),
//                       child: Stack(alignment: Alignment.centerLeft, children: [
//                         Align(
//                             alignment: Alignment.bottomRight,
//                             child: Container(
//                                 margin: EdgeInsets.only(left: 254.h),
//                                 decoration: AppDecoration.outlineCyanA.copyWith(
//                                     borderRadius:
//                                         BorderRadiusStyle.roundedBorder6),
//                                 child: Container(
//                                     width: 246.h,
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 74.h, vertical: 5.v),
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: fs.Svg(
//                                                 ImageConstant.imgGroup29),
//                                             fit: BoxFit.cover)),
//                                     child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Text("Block Puzzle",
//                                               style:
//                                                   theme.textTheme.bodyMedium),
//                                           SizedBox(height: 5.v),
//                                           Container(
//                                               width: 51.h,
//                                               padding: EdgeInsets.symmetric(
//                                                   horizontal: 10.h,
//                                                   vertical: 1.v),
//                                               decoration: AppDecoration
//                                                   .outlineGray
//                                                   .copyWith(
//                                                       borderRadius:
//                                                           BorderRadiusStyle
//                                                               .circleBorder9),
//                                               child: Text("Invite",
//                                                   style: theme
//                                                       .textTheme.labelLarge)),
//                                           SizedBox(height: 1.v)
//                                         ])))),
//                         Align(
//                             alignment: Alignment.centerLeft,
//                             child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                       height: 69.v,
//                                       width: 246.h,
//                                       child: Stack(
//                                           alignment: Alignment.topLeft,
//                                           children: [
//                                             Align(
//                                                 alignment:
//                                                     Alignment.bottomCenter,
//                                                 child: Container(
//                                                     decoration: AppDecoration
//                                                         .outlineYellowA
//                                                         .copyWith(
//                                                             borderRadius:
//                                                                 BorderRadiusStyle
//                                                                     .roundedBorder6),
//                                                     child: Container(
//                                                         width: 246.h,
//                                                         padding: EdgeInsets.symmetric(
//                                                             horizontal: 21.h,
//                                                             vertical: 5.v),
//                                                         decoration: BoxDecoration(
//                                                             image: DecorationImage(
//                                                                 image: fs.Svg(
//                                                                     ImageConstant
//                                                                         .imgGroup28),
//                                                                 fit: BoxFit
//                                                                     .cover)),
//                                                         child: Column(
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .start,
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Align(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .centerRight,
//                                                                   child: Row(
//                                                                       mainAxisAlignment:
//                                                                           MainAxisAlignment
//                                                                               .end,
//                                                                       children: [
//                                                                         Text(
//                                                                             "Let’s play",
//                                                                             style:
//                                                                                 theme.textTheme.bodyMedium),
//                                                                         Padding(
//                                                                             padding:
//                                                                                 EdgeInsets.only(left: 5.h),
//                                                                             child: Text("Block Puzzle", style: theme.textTheme.bodyMedium))
//                                                                       ])),
//                                                               SizedBox(
//                                                                   height: 5.v),
//                                                               Container(
//                                                                   width: 55.h,
//                                                                   margin: EdgeInsets.only(
//                                                                       left:
//                                                                           53.h),
//                                                                   padding: EdgeInsets.symmetric(
//                                                                       horizontal:
//                                                                           15.h,
//                                                                       vertical:
//                                                                           1.v),
//                                                                   decoration: AppDecoration
//                                                                       .outlineGray
//                                                                       .copyWith(
//                                                                           borderRadius: BorderRadiusStyle
//                                                                               .circleBorder9),
//                                                                   child: Text(
//                                                                       "Join",
//                                                                       style: theme
//                                                                           .textTheme
//                                                                           .labelLarge)),
//                                                               SizedBox(
//                                                                   height: 1.v)
//                                                             ])))),
//                                             CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgImage667,
//                                                 height: 62.adaptSize,
//                                                 width: 62.adaptSize,
//                                                 radius:
//                                                     BorderRadius.circular(12.h),
//                                                 alignment: Alignment.topLeft,
//                                                 margin:
//                                                     EdgeInsets.only(left: 6.h))
//                                           ])),
//                                   CustomImageView(
//                                       imagePath: ImageConstant.imgImage666,
//                                       height: 62.adaptSize,
//                                       width: 62.adaptSize,
//                                       radius: BorderRadius.circular(12.h),
//                                       margin: EdgeInsets.only(
//                                           left: 15.h, bottom: 7.v))
//                                 ]))
//                       ])),
//                   SizedBox(height: 10.v),
//                   Padding(
//                       padding: EdgeInsets.only(right: 12.h),
//                       child: CustomTextFormField(
//                           controller: messageController,
//                           hintText: "Type a message",
//                           textInputAction: TextInputAction.done,
//                           suffix: Container(
//                               margin: EdgeInsets.symmetric(
//                                   horizontal: 30.h, vertical: 14.v),
//                               child: CustomImageView(
//                                   imagePath: ImageConstant.imgCamera,
//                                   height: 20.adaptSize,
//                                   width: 20.adaptSize)),
//                           suffixConstraints: BoxConstraints(maxHeight: 48.v)))
//                 ]))));
//   }

//   /// Section Widget
//   Widget _buildFloatingActionButton(BuildContext context) {
//     return CustomFloatingButton(
//         height: 40,
//         width: 40,
//         backgroundColor: appTheme.greenA400,
//         child: CustomImageView(
//             imagePath: ImageConstant.imgThumbsUp,
//             height: 20.0.v,
//             width: 20.0.h));
//   }

//   /// Common widget
//   Widget _buildFrame(
//     BuildContext context, {
//     required String johnThomas,
//   }) {
//     return Row(children: [
//       CustomImageView(
//           imagePath: ImageConstant.imgContrast,
//           height: 24.adaptSize,
//           width: 24.adaptSize),
//       Container(
//           margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 4.v),
//           padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.v),
//           decoration: AppDecoration.fillWhiteA
//               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
//           child: Text(johnThomas,
//               style: theme.textTheme.labelMedium!
//                   .copyWith(color: appTheme.gray900.withOpacity(0.6))))
//     ]);
//   }

//   /// Common widget
//   Widget _buildFortyThree(BuildContext context) {
//     return Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomImageView(
//               imagePath: ImageConstant.imgSettings,
//               height: 40.adaptSize,
//               width: 40.adaptSize,
//               alignment: Alignment.centerRight),
//           SizedBox(height: 16.v),
//           CustomImageView(
//               imagePath: ImageConstant.imgSettingsWhiteA700,
//               height: 40.adaptSize,
//               width: 40.adaptSize)
//         ]);
//   }

//   /// Common widget
//   Widget _buildFrame1(
//     BuildContext context, {
//     required String alita,
//   }) {
//     return Row(children: [
//       CustomImageView(
//           imagePath: ImageConstant.imgCloseCyan200,
//           height: 24.adaptSize,
//           width: 24.adaptSize),
//       Container(
//           width: 32.h,
//           margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 4.v),
//           padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.v),
//           decoration: AppDecoration.fillWhiteA
//               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
//           child: Text(alita,
//               style: theme.textTheme.labelMedium!
//                   .copyWith(color: appTheme.gray900.withOpacity(0.6))))
//     ]);
//   }

//   /// Navigates back to the previous screen.
//   onTapClose(BuildContext context) {
//     Navigator.pop(context);
//   }

//   /// Navigates back to the previous screen.
//   onBackPress(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
