import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              ? Buat variabel loading di dalam State/Controller
              ! bool loading = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                CircularProgressIndicator();

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.loading = controller.loading!;
              controller.setState((){});
              */
                
              */
              if (controller.loading) const CircularProgressIndicator(),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.loading = true;
                    controller.setState(() {});
                  },
                  child: const Text("Berubah"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
