import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/generated/json/base/json_filed.dart';

class CccEntity with JsonConvert<CccEntity> {
	int aid;
	int uid;
	String title;
	@JSONField(name: "content_resume")
	dynamic contentResume;
	String content;
	String tag;
	@JSONField(name: "create_time")
	String createTime;
	@JSONField(name: "last_modify_time")
	String lastModifyTime;
	String state;
	@JSONField(name: "comment_count")
	dynamic commentCount;
}
