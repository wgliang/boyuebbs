写代码的时候随便写给自己的笔记。。不用看了，看数据库的具体sql，article是表，不同话题article是视图



话题：
表topic   topic_id topic_name topic_chinese topic_counter(用来热门话题的计数，一个文章对应一个话题，使得top_counter+1)

组织：学术组织 协会风采
学术
资源
交友
活动
娱乐：  美食
	招聘
	旅游
	拼客
	有约
xs,xh,science,resource,friend,activity,food,work,trip,ping,join;

文章：
表article_zuzhi  id title(标题) topicname data count usename

switch(articleName)
    {
        case "学术组织":articleName="xs";
                        break;
        case "协会风采":articleName="xh";
                        break;
        case "学术":articleName="science";
                        break;
        case "资源":articleName="resource";
                        break;
        case "交友":articleName="friend";
                        break;
        case "活动":articleName="activity";
                        break;
        case "美食":articleName="food";
                        break;
        case "招聘":articleName="work";
                        break;
        case "旅游":articleName="trip";
                        break;
        case "拼客":articleName="ping";
                        break;
        case "有约":articleName="join";
                        break;
        default:break;
    }





热门话题
<div class="zm-side-section explore-side-section"><!-- 热门话题-->
db.close 记得关数据库
数据库 文章不同话题的 视图与表的关系，较少冗余

select id,title,topicname,text,data,count,usename from
article where topicname='xh';

热门推荐  按所有文章的 count 数目（浏览量）
最新文章： 按 data递减排序desc 


