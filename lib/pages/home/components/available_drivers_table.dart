import 'package:data_table_2/data_table_2.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

/// Example without datasource
class AvailableDriversTable extends StatelessWidget {
  const AvailableDriversTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: themeController.isLightTheme ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
          border: Border.all(
            color: BrandColors.kColorBlue.withOpacity(0.4),
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, 6.0),
              color: BrandColors.kWhiteGray.withOpacity(0.1),
              blurRadius: 12.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(
          bottom: 30.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const SizedBox(width: 10.0),
                CustomText(
                  text: "Available Drivers".toUpperCase(),
                  color: themeController.isLightTheme ? BrandColors.kDarkGray : BrandColors.kHighlightGray,
                  weight: FontWeight.w900,
                ),
              ],
            ),
            DataTable2(
              columnSpacing: 12.0,
              horizontalMargin: 12.0,
              minWidth: 600.0,
              columns: [
                DataColumn2(
                  label: Text(
                    "Name".toUpperCase(),
                    style: GoogleFonts.nunito(
                      fontSize: 18.0,
                      color: themeController.isLightTheme ? BrandColors.kDarkGray : BrandColors.kHighlightGray,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text(
                    'Location'.toUpperCase(),
                    style: GoogleFonts.nunito(
                      fontSize: 18.0,
                      color: themeController.isLightTheme ? BrandColors.kDarkGray : BrandColors.kHighlightGray,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Rating'.toUpperCase(),
                    style: GoogleFonts.nunito(
                      fontSize: 18.0,
                      color: themeController.isLightTheme ? BrandColors.kDarkGray : BrandColors.kHighlightGray,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Action'.toUpperCase(),
                    style: GoogleFonts.nunito(
                      fontSize: 18.0,
                      color: themeController.isLightTheme ? BrandColors.kDarkGray : BrandColors.kHighlightGray,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                7,
                (index) => DataRow(
                  cells: [
                    const DataCell(
                      CustomText(text: "Nhana Abdul Wahab"),
                    ),
                    const DataCell(
                      CustomText(text: "New yourk city"),
                    ),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: BrandColors.kColorOrange,
                          size: 18,
                        ),
                        const SizedBox(width: 5.0),
                        const CustomText(
                          text: "4.5",
                        )
                      ],
                    )),
                    DataCell(
                      Container(
                        decoration: BoxDecoration(
                          color: themeController.isLightTheme ? BrandColors.kWhite : BrandColors.kColorDarkTheme,
                          border: Border.all(
                            color: themeController.isLightTheme ? BrandColors.kColorBlue : BrandColors.kWhiteGray,
                            width: 0.5,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6.0,
                        ),
                        child: CustomText(
                          text: "Assign Delivery",
                          color: themeController.isLightTheme ? BrandColors.kColorBlue : BrandColors.kWhiteGray,
                          weight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
