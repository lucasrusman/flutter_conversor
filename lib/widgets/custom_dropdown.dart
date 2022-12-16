import 'package:flutter/material.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/theme/app_theme.dart';

class CustomDropdownField extends StatelessWidget {
  final List<Moneda> monedasList;
  final String hint;

  const CustomDropdownField(
      {Key? key, required this.monedasList, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField<Moneda>(
                  dropdownColor: AppTheme.secondary,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.secondary),
                  )),
                  iconSize: 40,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_circle_down,
                    color: Color.fromRGBO(39, 81, 91, 1),
                  ),
                  hint: Center(child: Text(hint)),
                  onChanged: (Moneda? newValue) {
                    print(newValue!.code);
                  },
                  items: monedasList.map((item) {
                    return DropdownMenuItem<Moneda>(
                      value: item,
                      child: Center(
                        child: Text(
                          item.name.toString(),
                          style: const TextStyle(
                            color: Color.fromRGBO(36, 36, 36, 1),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
