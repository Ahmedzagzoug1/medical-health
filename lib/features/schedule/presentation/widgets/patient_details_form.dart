import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class PatientDetailsForm extends StatefulWidget {
  const PatientDetailsForm({super.key});

  @override
  State<PatientDetailsForm> createState() => _PatientDetailsFormState();
}

class _PatientDetailsFormState extends State<PatientDetailsForm> {
  bool isYourself = false; // "Another Person" is selected in the screenshot
  String selectedGender = 'Female'; // "Female" is selected in the screenshot

  final TextEditingController _nameController =
      TextEditingController(text: 'Jane Doe');
  final TextEditingController _ageController =
      TextEditingController(text: '30');
  final TextEditingController _problemController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _problemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Patient Details',
            style: getBoldtStyle(color: ColorManager.primary, fontSize: 16),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildSelectionPill(
                title: 'Yourself',
                isSelected: isYourself,
                onTap: () => setState(() => isYourself = true),
              ),
              const SizedBox(width: 8),
              _buildSelectionPill(
                title: 'Another Person',
                isSelected: !isYourself,
                onTap: () => setState(() => isYourself = false),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Full Name',
            style: getRegularStyle(color: ColorManager.black, fontSize: 14),
          ),
          const SizedBox(height: 8),
          _buildTextField(
            controller: _nameController,
            hint: 'User Name',
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 16),
          Text(
            'Age',
            style: getRegularStyle(color: ColorManager.black, fontSize: 14),
          ),
          const SizedBox(height: 8),
          _buildTextField(
            controller: _ageController,
            hint: 'Age',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          Text(
            'Gender',
            style: getRegularStyle(color: ColorManager.black, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildSelectionPill(
                title: 'Male',
                isSelected: selectedGender == 'Male',
                onTap: () => setState(() => selectedGender = 'Male'),
              ),
              const SizedBox(width: 8),
              _buildSelectionPill(
                title: 'Female',
                isSelected: selectedGender == 'Female',
                onTap: () => setState(() => selectedGender = 'Female'),
              ),
              const SizedBox(width: 8),
              _buildSelectionPill(
                title: 'Other',
                isSelected: selectedGender == 'Other',
                onTap: () => setState(() => selectedGender = 'Other'),
                isGrey: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: ColorManager.blue2, thickness: 1),
          const SizedBox(height: 16),
          Text(
            'Describe your problem',
            style: getRegularStyle(color: ColorManager.black, fontSize: 14),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _problemController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Enter Your Problem Here...',
              hintStyle: const TextStyle(color: ColorManager.TextFieldHintColor),
              filled: true,
              fillColor: ColorManager.white,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorManager.blue2),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorManager.primary),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectionPill({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
    bool isGrey = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? ColorManager.primary : ColorManager.white,
          border: Border.all(
            color: isSelected
                ? ColorManager.primary
                : (isGrey ? ColorManager.TextFieldHintColor.withOpacity(0.5) : ColorManager.blue2),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: getMediumStyle(
            color: isSelected
                ? ColorManager.white
                : (isGrey ? ColorManager.TextFieldHintColor : ColorManager.primary),
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required TextInputType keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: getMediumStyle(color: ColorManager.primary, fontSize: 16),
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(12),
        fillColor: ColorManager.textFieldBackgroundColor,
        hintText: hint,
        hintStyle: const TextStyle(color: ColorManager.TextFieldHintColor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.textFieldBackgroundColor),
          borderRadius: BorderRadius.circular(13),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.primary),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
