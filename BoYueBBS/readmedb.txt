д�����ʱ�����д���Լ��ıʼǡ������ÿ��ˣ������ݿ�ľ���sql��article�Ǳ���ͬ����article����ͼ



���⣺
��topic   topic_id topic_name topic_chinese topic_counter(�������Ż���ļ�����һ�����¶�Ӧһ�����⣬ʹ��top_counter+1)

��֯��ѧ����֯ Э����
ѧ��
��Դ
����
�
���֣�  ��ʳ
	��Ƹ
	����
	ƴ��
	��Լ
xs,xh,science,resource,friend,activity,food,work,trip,ping,join;

���£�
��article_zuzhi  id title(����) topicname data count usename

switch(articleName)
    {
        case "ѧ����֯":articleName="xs";
                        break;
        case "Э����":articleName="xh";
                        break;
        case "ѧ��":articleName="science";
                        break;
        case "��Դ":articleName="resource";
                        break;
        case "����":articleName="friend";
                        break;
        case "�":articleName="activity";
                        break;
        case "��ʳ":articleName="food";
                        break;
        case "��Ƹ":articleName="work";
                        break;
        case "����":articleName="trip";
                        break;
        case "ƴ��":articleName="ping";
                        break;
        case "��Լ":articleName="join";
                        break;
        default:break;
    }





���Ż���
<div class="zm-side-section explore-side-section"><!-- ���Ż���-->
db.close �ǵù����ݿ�
���ݿ� ���²�ͬ����� ��ͼ���Ĺ�ϵ����������

select id,title,topicname,text,data,count,usename from
article where topicname='xh';

�����Ƽ�  ���������µ� count ��Ŀ���������
�������£� �� data�ݼ�����desc 


