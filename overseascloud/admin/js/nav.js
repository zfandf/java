// �����������ļ�
var outlookbar=new outlook();
var t;
var ADMIN_URL=document.location.toString();
var index1 = ADMIN_URL.lastIndexOf('/');
ADMIN_URL=ADMIN_URL.substring(0,index1);
//��ȡ��̨·��

//������ַ
var SERVERURL="http://www.tuan518.com/";

//����start���������Ź������ֿ�ʼ
t=outlookbar.addtitle('�����Ź�','�Ź�����',1)
outlookbar.additem('�Ź��б�',t,'groups_list.php')
outlookbar.additem('�Ź����',t,'groups_add.php')
outlookbar.additem('�Ź�����վ',t,'groups_list.php?action=recycle')
t=outlookbar.addtitle('��Ӧ��','�Ź�����',1)
outlookbar.additem('��Ӧ�̼��б�',t,'suppliers_list.php')
outlookbar.additem('��ӹ�Ӧ��',t,'suppliers_add.php')
t=outlookbar.addtitle('�Ź�ȯ','�Ź�����',1)
outlookbar.additem('�Ź�ȯ�б�',t,'groupbond_list.php')
outlookbar.additem('����Ź�ȯ',t,'groupbond_add.php')
outlookbar.additem('��������Ź�ȯ',t,'groupbond_adds.php')

t=outlookbar.addtitle('�Ź���Ӧ','�Ź�����',1)
outlookbar.additem('<font color=red>�Ź���Ӧ��Ϣ</a>',t,SERVERURL+'api_list.php?url='+ADMIN_URL)
outlookbar.additem('<font color=red>�ṩ�Ź���Ϣ</a>',t,SERVERURL+'api_add.php?url='+ADMIN_URL)

//������end�������Ź������ֽ���

//����start�����������¹����ֿ�ʼ
t=outlookbar.addtitle('��������','���¹���',1)
outlookbar.additem('�����б�',t,'article_list.php')
outlookbar.additem('�������',t,'article_add.php')
t=outlookbar.addtitle('���·���','���¹���',1)
outlookbar.additem('�����б�',t,'atype_manage.php')
outlookbar.additem('��ӷ���',t,'atype_manage.php?action=add')
//������end���������¹����ֽ���

//����start����������վ���Թ����ֿ�ʼ
t=outlookbar.addtitle('��������','���Թ���',1)
outlookbar.additem('��ͨ����',t,'guestbook_list.php')
outlookbar.additem('�ṩ�Ź���Ϣ',t,'feedback_list.php?tid=1')
outlookbar.additem('�������',t,'feedback_list.php?tid=2')
//������end��������վ���Թ����ֽ���

//����start�����������������ֿ�ʼ
t=outlookbar.addtitle('������','��������',1)
outlookbar.additem('�����б�',t,'order_list.php')
outlookbar.additem('��Ա��ֵ',t,'accountcharge_list.php')
t=outlookbar.addtitle('֧���','��������',1)
outlookbar.additem('�տ',t,'moneychanges_list.php?tid=1')
outlookbar.additem('�˿',t,'moneychanges_list.php?tid=2')

t=outlookbar.addtitle('�ͻ���','��������',1)
outlookbar.additem('������',t,'invoice_list.php?tid=0,1')
outlookbar.additem('�˻���',t,'invoice_list.php?tid=2')
//������end���������������ֽ���

//����start����������Ա�����ֿ�ʼ
t=outlookbar.addtitle('�����Ա','��Ա����',1)
outlookbar.additem('��Ա�б�',t,'user_list.php')
outlookbar.additem('��Ա���',t,'user_add.php')
t=outlookbar.addtitle('���뷵��','��Ա����',1)
outlookbar.additem('���뷵������',t,'accountreferrals_list.php')
outlookbar.additem('δ�������뷵��',t,'accountreferrals_list.php?tid=0')
outlookbar.additem('ͨ�����뷵��',t,'accountreferrals_list.php?tid=1')
outlookbar.additem('ʧЧ���뷵��',t,'accountreferrals_list.php?tid=2')

//������end��������Ա�����ֽ���

//����start���������ʼ������ֿ�ʼ
t=outlookbar.addtitle('�����ƹ�','�ƹ����',1)
outlookbar.additem('�ֻ��б�',t,'mobile_list.php')
outlookbar.additem('�����б�',t,'email_list.php')
outlookbar.additem('�����˻�',t,'smtp_list.php')
outlookbar.additem('Ⱥ���ʼ�',t,'email_send.php')
//������end�������ʼ������ֽ���

//����start�����������׷�ʽ�����ֿ�ʼ
t=outlookbar.addtitle('��������','���׷�ʽ',1)
outlookbar.additem('֧����ʽ',t,'pay_account.php')
outlookbar.additem('���ͷ�ʽ',t,'pay_delivery.php')
//������end���������׷�ʽ�����ֽ���

//����start��������ϵͳ���ù����ֿ�ʼ
t=outlookbar.addtitle('����ϵͳ','ϵͳ����',1)
outlookbar.additem('��������',t,'sys_info.php')
outlookbar.additem('����Ա����',t,'sys_admin.php')
outlookbar.additem('���ݿⱸ��',t,'dbbak.php')
t=outlookbar.addtitle('��������','ϵͳ����',1)
outlookbar.additem('�����б�',t,'city_manage.php')
outlookbar.additem('��ӵ���',t,'city_manage.php?action=add')
t=outlookbar.addtitle('������־','ϵͳ����',1)
outlookbar.additem('��ջ���',t,'clearcache.php')
//outlookbar.additem('��־����',t,'log_list.php')
//������end���������׷�ʽ�����ֽ���


