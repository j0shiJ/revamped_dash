import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/general_profile_model.dart';
part 'general_profile_state.dart';

final generalProfileNotifier =
    StateNotifierProvider<GeneralProfileNotifier, GeneralProfileState>(
  (ref) => GeneralProfileNotifier(GeneralProfileState(
    generalProfileModelObj: GeneralProfileModel(),
  )),
);

/// A notifier that manages the state of a GeneralProfile according to the event that is dispatched to it.
class GeneralProfileNotifier extends StateNotifier<GeneralProfileState> {
  GeneralProfileNotifier(GeneralProfileState state) : super(state);
}
