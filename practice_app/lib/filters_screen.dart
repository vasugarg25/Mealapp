import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Function saveFilters;
  final Map<String,bool> currentFilters;
  FiltersScreen(this.currentFilters,this.saveFilters);
  @override


  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool GlutenFree = false;
  bool Vegan = false;
  bool Vegetarian = false;
  bool LactoseFree = false;
  initState(){
    GlutenFree=widget.currentFilters["gluten"];
    Vegan=widget.currentFilters["vegan"];
    Vegetarian=widget.currentFilters["vegetarian"];
    LactoseFree=widget.currentFilters["lactose"];
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final selectedFilters = {
                  'gluten': GlutenFree,
                  'lactose': LactoseFree,
                  'vegan': Vegan,
                  'vegetarian': Vegetarian,
                };
                widget.saveFilters(selectedFilters);
              })
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Filter according to your need!",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                  title: Text("Gluten-free"),
                  value: GlutenFree,
                  onChanged: (newvalue) {
                    setState(() {
                      GlutenFree = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text("Vegan"),
                  value: Vegan,
                  onChanged: (newvalue) {
                    setState(() {
                      Vegan = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text("Vegetarian"),
                  value: Vegetarian,
                  onChanged: (newvalue) {
                    setState(() {
                      Vegetarian = newvalue;
                    });
                  }),
              SwitchListTile(
                  title: Text("LactoseFree"),
                  value: LactoseFree,
                  onChanged: (newvalue) {
                    setState(() {
                      LactoseFree = newvalue;
                    });
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
