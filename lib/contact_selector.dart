// Copyright 2021 Muhammad Buhari. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

class ContactSelector {
  static const MethodChannel _channel = MethodChannel('contact_selector');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// Brings up a dialog where the user can select a contact from his/her
  /// address book.
  ///
  /// Returns the [Contact] selected by the user, or `null` if the user canceled
  /// out of the dialog.
  Future<Contact> selectContact() async {
    final Map<dynamic, dynamic> result =
        await _channel.invokeMethod('selectContact');
    return Contact.fromMap(result);
  }
}

/// Represents a contact selected by the user.
class Contact {
  Contact({required this.fullName, required this.phoneNumber});

  factory Contact.fromMap(Map<dynamic, dynamic> map) => Contact(
      fullName: map['fullName'],
      phoneNumber: PhoneNumber.fromMap(map['phoneNumber']));

  /// The full name of the contact, e.g. "Dr. Daniel Higgens Jr.".
  final String fullName;

  /// The phone number of the contact.
  final PhoneNumber phoneNumber;

  @override
  String toString() => '$fullName: $phoneNumber';
}

/// Represents a phone number selected by the user.
class PhoneNumber {
  PhoneNumber({required this.number, required this.label});

  factory PhoneNumber.fromMap(Map<dynamic, dynamic> map) =>
      PhoneNumber(number: map['number'], label: map['label']);

  /// The formatted phone number, e.g. "+1 (555) 555-5555"
  final String number;

  /// The label associated with the phone number, e.g. "home" or "work".
  final String label;

  @override
  String toString() => '$number ($label)';
}
