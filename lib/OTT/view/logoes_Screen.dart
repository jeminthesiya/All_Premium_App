import 'package:all_premium/OTT/provider/OTT_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OTT_Screen extends StatefulWidget {
  const OTT_Screen({Key? key}) : super(key: key);

  @override
  State<OTT_Screen> createState() => _OTT_ScreenState();
}

class _OTT_ScreenState extends State<OTT_Screen> {
  OTT_Providr? Otrue;
  OTT_Providr? Ofalse;

  @override
  Widget build(BuildContext context) {
    Otrue = Provider.of<OTT_Providr>(context, listen: true);
    Ofalse = Provider.of<OTT_Providr>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: Icon(
            Icons.arrow_back,
          ),
          title: Text("MOVIES APP"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.payment,
              ),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 0.75,
            // crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'new');
                Ofalse!.initcontriller(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black87,
                      ),
                    ),
                    child: Image.asset(
                      "${Ofalse!.logoList[index]}",
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: Otrue?.logoList.length,
        ),
      ),
    );
  }
}
