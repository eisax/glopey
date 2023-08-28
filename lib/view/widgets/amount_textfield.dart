import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gloyey/util/app_constants.dart';
import 'package:gloyey/util/dimensions.dart';
import 'package:gloyey/util/styles.dart';

class CustomAmountField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final int? maxLine;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final TextInputAction? textInputAction;
  final bool isAmmount;
  final bool isValidator;
  final String? validatorMessage;
  final Color? fillColor;
  final TextCapitalization capitalization;
  final bool isAmount;
  final bool amountIcon;
  final bool border;
  final bool isDescription;
  final bool idDate;
  final bool isPassword;
  final Function(String text)? onChanged;
  final String? prefixIconImage;
  final isPos;
  final int? maxSize;
  final bool variant;
  final double? fontSize;

  const CustomAmountField({
    this.fontSize,
    super.key,
    this.controller,
    this.hintText,
    this.textInputType,
    this.maxLine,
    this.focusNode,
    this.nextNode,
    this.textInputAction,
    this.isAmmount = false,
    this.isValidator = false,
    this.validatorMessage,
    this.capitalization = TextCapitalization.none,
    this.fillColor,
    this.isAmount = false,
    this.amountIcon = false,
    this.border = false,
    this.isDescription = false,
    this.onChanged,
    this.idDate = false,
    this.prefixIconImage,
    this.isPassword = false,
    this.isPos = false,
    this.maxSize,
    this.variant = false,
  });

  @override
  State<CustomAmountField> createState() => _CustomAmountFieldState();
}

class _CustomAmountFieldState extends State<CustomAmountField> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Container(
        child: TextFormField(
          style: robotoBold.copyWith(
              color: AppConstants.mainColor, fontSize: widget.fontSize),
          maxLength: 8,
          controller: widget.controller,
          maxLines: widget.maxLine ?? 1,
          textCapitalization: widget.capitalization,
          focusNode: widget.focusNode,
          obscureText: widget.isPassword ? _obscureText : false,
          onChanged: widget.onChanged,
          enabled: widget.idDate ? false : true,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
          ],
          keyboardType: widget.isAmount
              ? TextInputType.number
              : widget.textInputType ?? TextInputType.text,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          onFieldSubmitted: (v) {
            FocusScope.of(context).requestFocus(widget.nextNode);
          },
          validator: (input) {
            if (input!.isEmpty) {
              if (widget.isValidator) {
                return widget.validatorMessage ?? "";
              }
            }
            return null;
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: widget.hintText ?? '',
            focusedBorder: InputBorder.none,
            filled: widget.fillColor != null,
            fillColor: widget.fillColor,
            isDense: true,
            alignLabelWithHint: true,
            counterText: '',
            hintStyle: robotoBold.copyWith(
              color: Theme.of(context).hintColor,
              fontSize: widget.fontSize,
            ),
            errorStyle: const TextStyle(height: 1),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
