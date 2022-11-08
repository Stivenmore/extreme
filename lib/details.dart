import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
                child: Image.asset(
                  'assets/playa.jpeg',
                  height: 350,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Center(child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Day 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(lorem(paragraphs: 3, words: 1000), textAlign: TextAlign.start,),
              ),
            ),
            SliverToBoxAdapter(
              child: IconButton(
                    onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: const Icon(Icons.arrow_back_ios, color: Colors.purpleAccent, )),
            )
          ],
        ),
      ),
    );
  }
}
