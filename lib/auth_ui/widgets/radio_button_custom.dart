import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utilities/responsive.dart';

final optionsName = Provider<List<String>>((ref) {
  return ['Male', 'Female'];
});

final selectedOptions = StateProvider<String>((ref) {
  final options = ref.watch(optionsName);
  return options[0];
});

class RadioButtonCustom extends ConsumerWidget {
  const RadioButtonCustom({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = ref.watch(optionsName);
    final selectedOption = ref.watch(selectedOptions);
    return Container(
      width: Responsive.sizeW(350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Responsive.sizeW(4)),
        border: Border.all(color: const Color(0xffdcdfe4)),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: Responsive.sizeW(10)),
            child: const Icon(
              Icons.male_rounded,
              size: 25,
              color: Color(0xff4e5d78),
            ),
          ),
          Radio<String>(
            value: options[0],
            groupValue: selectedOption,
            onChanged: (value) {
              ref.read(selectedOptions.notifier).state = value!;
            },
          ),
          Text(
            options[0],
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: selectedOption == options[0]
                  ? const Color(0xff4e5d78)
                  : const Color(0xff959eae),
              fontWeight: FontWeight.w600,
            ),
          ),
          Radio<String>(
            value: options[1],
            groupValue: selectedOption,
            onChanged: (value) {
              ref.read(selectedOptions.notifier).state = value!;
            },
          ),
          Text(
            options[1],
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: selectedOption == options[1]
                  ? const Color(0xff4e5d78)
                  : const Color(0xff959eae),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
