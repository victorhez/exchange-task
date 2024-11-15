import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appstyles.dart';

class FilledTextField extends StatefulWidget {
  final String hint;
  final Widget? suffix;
  final Widget? preffix;
  final FocusNode? focusNode;
  final int? maxLine;
  final int? minLine;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? enabled;
  final bool? obscured;
  final bool? outline;
  final bool? autofocus;
  final bool? hasElevation;
  final bool? hasBorder;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final BorderRadius? radius;
  final String? Function(String?)? validator;

  final String? Function(String?)? onChanged;
  final String? Function(String?)? onFieldSubmitted;
  final String? Function(String?)? onSaved;
  final GlobalKey<FormFieldState<dynamic>>? formKey;

  const FilledTextField(
      {Key? key,
        required this.hint,
        this.suffix,
        this.validator,
        this.preffix,
        this.maxLine,
        this.inputType,
        this.controller,
        this.onChanged,
        this.enabled,
        this.contentPadding,
        this.textInputAction,
        this.obscured = false,
        this.fillColor,
        this.focusNode,
        this.outline = false,
        this.autofocus = false,
        this.hasElevation = false,
        this.formKey,
        this.minLine,
        this.onFieldSubmitted,
        this.onSaved,
        this.hasBorder = false,
        this.radius})
      : super(key: key);

  @override
  State<FilledTextField> createState() => _FilledTextFieldState();
}

class _FilledTextFieldState extends State<FilledTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: widget.radius ?? BorderRadius.circular(0),
          boxShadow: widget.hasElevation!
              ? [
            BoxShadow(
                color:  Colors.grey.withOpacity(0.5),
                offset: const Offset(1, 1),
                spreadRadius: 1,
                blurStyle: BlurStyle.outer)
          ]
              : []),
      child: SizedBox(
        child: TextFormField(
          validator: widget.validator,
          key: widget.formKey,
          controller: widget.controller,
          maxLines: widget.maxLine ?? 1,
          keyboardType: widget.inputType,
          cursorColor: Theme.of(context).colorScheme.onBackground,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          onSaved: widget.onSaved,
          obscureText: widget.obscured!,
          focusNode: widget.focusNode,
          autofocus: widget.autofocus!,
          minLines: widget.minLine,
          textInputAction: widget.textInputAction,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          decoration: AppStyles.filledTextFieldDecoration.copyWith(
              fillColor:
              widget.fillColor ?? Theme.of(context).colorScheme.surface,
              enabledBorder: widget.hasBorder!
                  ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide:
                  BorderSide(color:  Colors.grey.withOpacity(0.5)))
                  : null,
              hintText: widget.hint,
              suffixIcon: widget.suffix,
              focusedBorder: widget.outline!
                  ? OutlineInputBorder(
                  gapPadding: 2,
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10))
                  : null,
              border: widget.hasBorder!
                  ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.transparent))
                  : null,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: widget.preffix,
              ),
              // prefix: Icon(Icons.abc_outlined),
              prefixIconColor:  Colors.grey.withOpacity(0.8),
              prefixIconConstraints: const BoxConstraints(
                maxHeight: 100,
                maxWidth: 100,
              ),
              suffixIconColor: Theme.of(context).colorScheme.primary,
              enabled: widget.enabled,
              contentPadding: widget.contentPadding ?? const EdgeInsets.all(0),
              filled: true,
              hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}