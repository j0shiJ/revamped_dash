import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'notifier/general_profile_notifier.dart';

class GeneralProfileScreen extends ConsumerStatefulWidget {
  const GeneralProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GeneralProfileScreenState createState() => GeneralProfileScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GeneralProfileScreenState extends ConsumerState<GeneralProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumnmyaccount(context),
              SizedBox(height: 31.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: Column(
                      children: [
                        _buildColumninstitute(context),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildRowacademic(
                            context,
                            academic: "msg_basic_information".tr,
                            editOne: "lbl_edit".tr,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildColumnname(context),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildRowacademic(
                            context,
                            academic: "msg_academic_information".tr,
                            editOne: "lbl_edit".tr,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildColumnclass(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmyaccount(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          CustomAppBar(
            title: AppbarTitle(
              text: "lbl_my_account".tr,
              margin: EdgeInsets.only(left: 24.h),
            ),
            actions: [
              Container(
                height: 24.v,
                width: 25.h,
                margin: EdgeInsets.only(left: 23.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          right: 17.h,
                          bottom: 16.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.red600,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconexLightFolder,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.h),
                    )
                  ],
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgCall,
                margin: EdgeInsets.only(left: 12.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSearch,
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 23.h,
                ),
              )
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 69.v,
                  width: 64.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 5.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImg,
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        radius: BorderRadius.circular(
                          32.h,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 56.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.outlinePrimary1.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_60".tr,
                            style: CustomTextStyles.titleSmallGray900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_rajbir_singh".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "lbl_91_9223234561".tr,
                        style: CustomTextStyles.titleSmallSecondaryContainer,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 65.h,
                  margin: EdgeInsets.symmetric(vertical: 21.v),
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVecteezyCoinI,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "lbl_25".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryBlack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 33.h,
              right: 41.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_my_goals_3".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0, 0.08),
                      end: Alignment(1, 1),
                      colors: [theme.colorScheme.primary, appTheme.purple900],
                    ),
                    child: CustomOutlinedButton(
                      height: 38.v,
                      width: 109.h,
                      text: "lbl_general".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_favourites".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumninstitute(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_institute_status".tr,
                style: CustomTextStyles.titleSmallOnSecondaryContainer,
              ),
              Spacer(),
              Text(
                "lbl_view_hsitory".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 7.v,
                width: 4.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 7.v,
                ),
              )
            ],
          ),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillGray5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 61.v,
                  width: 60.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_indian_coaching".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_demo_booked".tr,
                              style: CustomTextStyles.bodyMedium13_1,
                            ),
                            TextSpan(
                              text: "lbl_3088_otp".tr,
                              style: CustomTextStyles
                                  .labelLargeSecondaryContainer13,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnname(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRowgender(
            context,
            gender: "lbl_name".tr,
            gender1: "lbl_rajbir_singh".tr,
          ),
          SizedBox(height: 15.v),
          _buildRowgender(
            context,
            gender: "lbl_gender".tr,
            gender1: "lbl_male".tr,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_phone_no".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_91_9223234561".tr,
                  style: CustomTextStyles.titleSmallSecondaryContainer,
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildRowgender(
            context,
            gender: "lbl_email".tr,
            gender1: "msg_example_gmail_com".tr,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnclass(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRowgender(
            context,
            gender: "lbl_class".tr,
            gender1: "lbl_10th".tr,
          ),
          SizedBox(height: 17.v),
          _buildRowgender(
            context,
            gender: "lbl_school_name".tr,
            gender1: "msg_delhi_public_school".tr,
          ),
          SizedBox(height: 17.v),
          _buildRowgender(
            context,
            gender: "lbl_stream".tr,
            gender1: "lbl_commerce".tr,
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_subjects".tr,
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "msg_subject_1_subject".tr,
                style: CustomTextStyles.titleSmallSecondaryContainer,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildRowgender(
    BuildContext context, {
    required String gender,
    required String gender1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          gender,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        ),
        Text(
          gender1,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildRowacademic(
    BuildContext context, {
    required String academic,
    required String editOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          academic,
          style: CustomTextStyles.titleSmallOnSecondaryContainer.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        Text(
          editOne,
          style: CustomTextStyles.titleSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }
}
