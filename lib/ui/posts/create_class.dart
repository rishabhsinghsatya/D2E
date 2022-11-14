import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/ui/posts/attendance_page.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class CreateClassScreen extends StatefulWidget {
  const CreateClassScreen({super.key});

  @override
  State<CreateClassScreen> createState() => _CreateClassScreenState();
}

class _CreateClassScreenState extends State<CreateClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B.tech first year"),
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(12.sp),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Roll No:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(12.sp),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Student Name:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              RoundButton(
                  title: "OK",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AttendancePageScreen()));
                  }),
              SizedBox(
                height: 8.h,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Table(
                      border: TableBorder.all(color: Colors.white),
                      columnWidths: const <int, TableColumnWidth>{
                        1: FixedColumnWidth(70),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            tableCell("Name"),
                            tableCell("Roll No"),
                            tableCell("Action")
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                    child: Text(
                                        "Rishabh singh satya singh stay",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12.sp))),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                    child: Text("1983",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12.sp))),
                              ),
                            ),
                            TableCell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.drag_indicator_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.green,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ])),
            ],
          )
        ],
      ),
    );
  }

  static tableCell(String str) {
    return TableCell(
      child: Container(
        color: AppColors.primaryColor,
        child: Center(
          child: Text(
            str,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
