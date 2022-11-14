import 'package:d2e/res/background_img.dart';
import 'package:d2e/ui/posts/create_class.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class WorkspaceScreen extends StatefulWidget {
  const WorkspaceScreen({super.key});

  @override
  State<WorkspaceScreen> createState() => _WorkspaceScreenState();
}

class _WorkspaceScreenState extends State<WorkspaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("WorkSpace"),
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(12.sp),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Classroom Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                RoundButton(
                    title: "Done",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateClassScreen()));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
