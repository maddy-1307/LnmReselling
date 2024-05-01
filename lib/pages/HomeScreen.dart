import 'package:flutter/material.dart';
import 'package:lnm_reselling/Constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lnm_reselling/pages/ProductsScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String id= "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth=FirebaseAuth.instance;

  void getCurrentUser(){
    final user=_auth.currentUser;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(""),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: (){showSearch(context: context, delegate: CustomSearchDelegate ());}, icon: Icon(Icons.search),),

        ],
      ),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      )
      
      
    );
  }
}
class GridB extends StatefulWidget {
  const GridB({super.key});

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String,dynamic>> gridMap=kgridMap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),// for scrollable
      shrinkWrap: true,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,// between columns
      mainAxisSpacing:12 ,// between two rows
      mainAxisExtent: 250,// length of rows
      ),
      itemCount: gridMap.length,
      itemBuilder: (context,index){
        return Container(

        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(16),
          color: Colors.brown[200],
        ),
          child: Column(
            children: [
              ClipRRect(
          borderRadius : const BorderRadius.only(topLeft:Radius.circular(16.0),topRight: Radius.circular(16)),
                child: Image.network(
                    "${gridMap.elementAt(index)['images']}",
                  height: 150,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height:2.0),
              Padding(padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductsScreen(name: "${gridMap.elementAt(index)['title']}")));},
                    child: Text("${gridMap.elementAt(index)['title']}",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,

                    ),
                  ),),
                ],
                
              ),)
            ],
          ),

      );
        },

    );
  }
}



























class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms=ksearchTerms;
  @override
  List<Widget> buildActions(BuildContext context){
    return[
      IconButton(
      icon:const Icon(Icons.clear),
        onPressed: (){query='';},
      ) ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(onPressed:(){close(context, null);}, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
      itemBuilder: (context,index){
          var result=matchQuery[index];
          return GestureDetector(onTap:(){print(result);},child: ListTile(title: Text(result),));
      }
    );
  }
  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];
    for (var item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context,index){
          var result=matchQuery[index];
          return GestureDetector(onTap:(){print(result);},child: ListTile(title: Text(result),));
        }

    );
  }

}

