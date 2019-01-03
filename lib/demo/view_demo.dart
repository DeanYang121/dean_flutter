import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewbuilderDemo();
  }
}

class GridViewbuilderDemo extends StatelessWidget{
  Widget _grideItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        itemBuilder: _grideItemBuilder,
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 3,
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0
        )
      );
    }
}

class GridViewExtendDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text('item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text('item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _pageItemBuilder(BuildContext context, int index) {
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(posts[index].author)
              ],
            ),
          )
        ],
      );
    }

    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child:
              Text('one', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.brown[800],
          alignment: Alignment(0.0, 0.0),
          child:
              Text('two', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment(0.0, 0.0),
          child: Text('three',
              style: TextStyle(fontSize: 32, color: Colors.white)),
        )
      ],
    );
  }
}
