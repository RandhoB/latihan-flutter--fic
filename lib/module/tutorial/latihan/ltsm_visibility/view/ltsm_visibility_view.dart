import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              ? Buat variabel visible di dalam State/Controller
              ! bool visible = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.visible = controller.visible!;
              controller.setState((){});
              */
                
              */
              if (controller.visible)
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ElevatedButton(
                  onPressed: () {
                    controller.visible = true;
                    controller.setState(() {});
                  },
                  child: const Text("Muncul")),
              ElevatedButton(
                  onPressed: () {
                    controller.visible = false;
                    controller.setState(() {});
                  },
                  child: const Text("Menghilang")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}
