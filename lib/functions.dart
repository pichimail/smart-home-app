import 'dart:math';

import 'package:chinna_smart_hub/src/models/device.dart';
import 'package:chinna_smart_hub/src/models/device_type.dart';
import 'package:chinna_smart_hub/src/models/devicelist.dart';

String? connectMQTT() {
  // TODO: Implement MQTT connection.
  // This intentionally returns null so it is safe to call from the UI
  // until the MQTT implementation is available.
  return null;
}

// Safely compute a normalized value between 0 and 1.
double getNormalizedDeviceValue(
  SmartDevice device,
  double? minimumOutput,
) {
  final value = device.value ?? 0.0;
  final minValue = device.minValue ?? 0.0;
  final maxValue = device.maxValue ?? 100.0;

  if (maxValue == minValue) {
    return 0.5;
  }

  var normalized = (value - minValue) / (maxValue - minValue);

  if (minimumOutput != null && minimumOutput > 0 && minimumOutput < 1) {
    normalized = minimumOutput + (1 - minimumOutput) * normalized;
  }

  return normalized.clamp(0.0, 1.0);
}

double radialSliderRange(double sweep) {
  return sweep * 360;
}
