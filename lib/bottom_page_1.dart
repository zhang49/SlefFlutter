import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterapp/model/article.dart';
import 'package:flutterapp/model/self_article.dart';
import 'package:flutterapp/http/self_aritcle_dao.dart';

class BottomPage1 extends StatefulWidget {
  final String travelUrl;
  final String groupChannelCode;

  const BottomPage1({Key key, this.travelUrl, this.groupChannelCode})
      : super(key: key);

  @override
  State createState() {
    return _State();
  }
}

class _State extends State<BottomPage1> with AutomaticKeepAliveClientMixin {
  List<ArticleItem> articleItems = [];
  int pageIndex = 1;
  bool isLoading = true;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _loadData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadData(loadMore: true);
      }
    });
    super.initState();
  }

  Future _handleRefresh() async {
    _loadData();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: StaggeredGridView.countBuilder(
            controller: _scrollController,
            crossAxisCount: 1,
            itemCount: articleItems?.length ?? 0,
            itemBuilder: (BuildContext context, int index) =>
                ArticleItem(index: index, item: articleItems[index].item),
            staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
          ),
        ),
      ),
    ));
  }

  @override
  bool get wantKeepAlive => true;

  void _loadData({loadMore = false}) {
    if (loadMore) {
      pageIndex++;
    } else {
      pageIndex = 1;
    }
    setState(() {
      isLoading = false;
      SelfArticleDao.GetList().then((value) {
        for (var el in value) {
          ArticleItem item = new ArticleItem(
              item: SelfArticle(
                  aId: el.aId,
                  title: el.title,
                  content: el.content,
                  commCount: el.commCount,
                  userName: el.userName,
                  imageUrl: el.imageUrl,
                  userAvterUrl:
                      'http://hbimg.b0.upaiyun.com/d01dcc29e8d1dca7ea41f9f01e5eba02ae42fe3667bd-812EtA_fw658',
                  url: el.url));

          articleItems.add(item);
        }
      });
    });
  }
}

List<ArticleItem> _filterItems(List<ArticleItem> resultList) {
  if (resultList == null) {
    return [];
  }
  List<ArticleItem> filterItems = [];
  resultList.forEach((item) {
    if (item.index != null) {
      filterItems.add(item);
    }
  });
  return filterItems;
}

class ArticleItem extends StatelessWidget {
  final SelfArticle item;
  final int index;

  const ArticleItem({Key key, this.item, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item.url != null && item.url.length > 0) {
          //NavigatorUtil.push(context, WebView(url: item.article.urls[0].h5Url, title: "详情"));
        }
      },
      child: Card(
        child: PhysicalModel(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //_itemImage(),
              _title(),
              _infoText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemImage() {
    return Stack(
      children: <Widget>[
        Image.network(item.imageUrl),
        Positioned(
          bottom: 8,
          left: 8,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                LimitedBox(
                  maxWidth: 130,
                  child: Text(
                    _positionName(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.all(4),
      child: Text(
        item.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  Widget _infoText() {
    return Container(
      padding: EdgeInsets.fromLTRB(6, 0, 6, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              PhysicalModel(
                color: Colors.transparent,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  item.userAvterUrl,
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 90,
                child: Text(
                  item.userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 14,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  item.commCount.toString(),
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _positionName() {
    return "未知";
  }
}
