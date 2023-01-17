/*1 OfficeŬ������ �̿��� ��ü�� �����Ҷ� chk��������� 2�� �ʱⰪ�� �Ҵ��Ͻÿ�.
 *   1�̸� �հ� 2�̸� ���հ�
 *   
 * 2 ��°�� 
 * 	��ȣ     ����         �հݿ���
 * 	 1    90       1
 *   2    65       2
 *   3    85       1
 */
package Java_Basic;

class Office {
	int num;
	int jumsu;
	int chk;

	public Office(int chk) {
		this.chk = chk;
	}

	// ���α׷��� �������Ҷ� ���������� ������ �ǵ��� �����ڸ� �����Ͻÿ�.
	public Office(int num, int jumsu) {
		this.num = num;
		this.jumsu = jumsu;

	}

	public void count() {
		// ������ 80�̻��̸� chk�� 1�� �����Ѵ�.
		if (jumsu >= 80) {
			chk = 1;
		} else {
			chk = 2;
		}

	}

	public void prn() {
		System.out.printf("%d %d %d\n", num, jumsu, chk);
	}

	public void process() {
		count();
		prn();
	}
}

public class Java0804_Ans04_class {

	public static void main(String[] args) {
		// ������ Ǯ���� �ּ��� ������ �Ѵ�.
		Office p1 = new Office(1, 90);
		Office p2 = new Office(2, 65);
		Office p3 = new Office(3, 85);
		p1.process();
		p2.process();
		p3.process();
	}// end main()

}// end class