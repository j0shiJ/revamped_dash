part of 'general_profile_notifier.dart';

/// Represents the state of GeneralProfile in the application.

// ignore_for_file: must_be_immutable
class GeneralProfileState extends Equatable {
  GeneralProfileState({this.generalProfileModelObj});

  GeneralProfileModel? generalProfileModelObj;

  @override
  List<Object?> get props => [generalProfileModelObj];
  GeneralProfileState copyWith({GeneralProfileModel? generalProfileModelObj}) {
    return GeneralProfileState(
      generalProfileModelObj:
          generalProfileModelObj ?? this.generalProfileModelObj,
    );
  }
}
