/**
 * ����
 * @author YASHIRO
 *
 */
public class Human {

	// ����
	String name; // ����
	String gender; // �Ա�
	int age; // ����
	
	// ����
	// ˼��
	public void thinking() {
		System.out.println("����˼��");
	}
	// �Է�
	public void eat() {
		System.out.println("���ڳԶ���");
	}
	// ˯��
	public void sleep() {
		System.out.println("����˯��");
	}
	
	// ���ҽ���
	public void introduce() {
		System.out.println("�ҽ�"+this.name+", �Ա�"+this.gender+", ����"+this.age+"��");
	}
	
	public static void main(String[] args) {
		Human man = new Human();
		man.name = "����";
		man.gender = "��";
		man.age = 20;
		man.introduce();
	}
}
