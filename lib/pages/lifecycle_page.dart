import 'package:flutter/material.dart';

import 'details_page.dart';

//App Lifecycles
class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({super.key});

  @override
  State<LifeCyclePage> createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> with WidgetsBindingObserver{

  Future _openDetails() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
      return const DetailsPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    switch (state) {
      case AppLifecycleState.resumed:
        print('Resumed');
        break;
      case AppLifecycleState.inactive:
        print('Inactive');
        break;
      case AppLifecycleState.paused:
        print('Paused');
        break;
      case AppLifecycleState.detached:
        print('Detached');
        break;
      case AppLifecycleState.hidden:
      // A new **hidden** state has been introduced in latest flutter version
        print('Hidden');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Widget LifeCycle"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("Open"),
          onPressed: () {
            _openDetails();
          },
        ),
      ),
    );
  }
}