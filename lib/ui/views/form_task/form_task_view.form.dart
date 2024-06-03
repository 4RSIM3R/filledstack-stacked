// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String TitleValueKey = 'title';
const String SubtitleValueKey = 'subtitle';

final Map<String, TextEditingController> _FormTaskViewTextEditingControllers =
    {};

final Map<String, FocusNode> _FormTaskViewFocusNodes = {};

final Map<String, String? Function(String?)?> _FormTaskViewTextValidations = {
  TitleValueKey: null,
  SubtitleValueKey: null,
};

mixin $FormTaskView {
  TextEditingController get titleController =>
      _getFormTextEditingController(TitleValueKey);
  TextEditingController get subtitleController =>
      _getFormTextEditingController(SubtitleValueKey);

  FocusNode get titleFocusNode => _getFormFocusNode(TitleValueKey);
  FocusNode get subtitleFocusNode => _getFormFocusNode(SubtitleValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_FormTaskViewTextEditingControllers.containsKey(key)) {
      return _FormTaskViewTextEditingControllers[key]!;
    }

    _FormTaskViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _FormTaskViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_FormTaskViewFocusNodes.containsKey(key)) {
      return _FormTaskViewFocusNodes[key]!;
    }
    _FormTaskViewFocusNodes[key] = FocusNode();
    return _FormTaskViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    titleController.addListener(() => _updateFormData(model));
    subtitleController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    titleController.addListener(() => _updateFormData(model));
    subtitleController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          TitleValueKey: titleController.text,
          SubtitleValueKey: subtitleController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _FormTaskViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _FormTaskViewFocusNodes.values) {
      focusNode.dispose();
    }

    _FormTaskViewTextEditingControllers.clear();
    _FormTaskViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get titleValue => this.formValueMap[TitleValueKey] as String?;
  String? get subtitleValue => this.formValueMap[SubtitleValueKey] as String?;

  set titleValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TitleValueKey: value}),
    );

    if (_FormTaskViewTextEditingControllers.containsKey(TitleValueKey)) {
      _FormTaskViewTextEditingControllers[TitleValueKey]?.text = value ?? '';
    }
  }

  set subtitleValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SubtitleValueKey: value}),
    );

    if (_FormTaskViewTextEditingControllers.containsKey(SubtitleValueKey)) {
      _FormTaskViewTextEditingControllers[SubtitleValueKey]?.text = value ?? '';
    }
  }

  bool get hasTitle =>
      this.formValueMap.containsKey(TitleValueKey) &&
      (titleValue?.isNotEmpty ?? false);
  bool get hasSubtitle =>
      this.formValueMap.containsKey(SubtitleValueKey) &&
      (subtitleValue?.isNotEmpty ?? false);

  bool get hasTitleValidationMessage =>
      this.fieldsValidationMessages[TitleValueKey]?.isNotEmpty ?? false;
  bool get hasSubtitleValidationMessage =>
      this.fieldsValidationMessages[SubtitleValueKey]?.isNotEmpty ?? false;

  String? get titleValidationMessage =>
      this.fieldsValidationMessages[TitleValueKey];
  String? get subtitleValidationMessage =>
      this.fieldsValidationMessages[SubtitleValueKey];
}

extension Methods on FormStateHelper {
  setTitleValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TitleValueKey] = validationMessage;
  setSubtitleValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SubtitleValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    titleValue = '';
    subtitleValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      TitleValueKey: getValidationMessage(TitleValueKey),
      SubtitleValueKey: getValidationMessage(SubtitleValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _FormTaskViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _FormTaskViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      TitleValueKey: getValidationMessage(TitleValueKey),
      SubtitleValueKey: getValidationMessage(SubtitleValueKey),
    });
