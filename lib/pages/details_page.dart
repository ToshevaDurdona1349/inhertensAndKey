import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("initState");
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    // print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    // print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Details"),
      ),
    );
  }
  @override
  void didUpdateWidget(covariant DetailsPage oldWidget){
    super.didUpdateWidget(oldWidget);
    // print("didUpdateWidget");
  }
  
  @override
  void setState(VoidCallback fn){
    super.setState(fn);
    // print("setstate");
  }
  
  @override
  void deactivate(){
    super.deactivate();
    // print("deactivate");
  }
  @override
  void dispose(){
    super.dispose();
    // print("dispose");
  }
 
}
