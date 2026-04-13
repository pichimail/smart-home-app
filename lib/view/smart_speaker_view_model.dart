import '../functions.dart';
import 'package:chinna_smart_hub/provider/base_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SmartSpeakerViewModel extends BaseModel {
  PanelController pc = PanelController();
  bool isSpeakeron = true;
  double speakerVolume = 65;

  void speakerSwitch(bool value) async {
    isSpeakeron = value;
    await toggleDevice('/devices/master/speaker', value);
    notifyListeners();
  }

  void changeSpeakerVolume(double newVal) {
    speakerVolume = newVal;
    notifyListeners();
  }
}
