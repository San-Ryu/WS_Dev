/* [�ð�����]
 * 	1000���� Test Input �Է½� C/C++ 1��, JAVA 1��
 * [�޸� ����]
 * 	Stack : 1 MB / Total : 256 MB
 * [�ڵ� ����]
 *	128 KB
 * [ä��]
 *	����� �����ϸ� Test Input�� ���� ����� �����ؼ� �ǽð����� �˷��ش�.
 *	��� ���̽��� ���� ������ ��� Pass, �� ���� ��� Fail�̴�.
 * 
 * [����]
 * ���簢�� ����� ���ڰ� �ִ�. �� ���� �� ������ �� ������ �����Ͽ� �Ʒ��� ���� ������� Ÿ���� �ٿ��������� �Ѵ�.
 * 
 * 		24	25	10	11	12
 * 
 * 		23	9	2	3	13
 * 
 * 		22	8	1	4	14
 * 
 * 		21	7	6	5	15
 * 
 * 		20	19	18	17	16
 * 
 * 
 * 1. �� ���ڴ� ���� ���� ��Ģ���� ��ȣ�� �ο��Ѵ�.
 *	    ��, ������ ��ȣ�� ���� �����̸�, �� ó�� Ÿ���� ���̱� �����ϴ� �κ��� 1������ �ϰ�,
 *    �� ����, 1�� ���ڿ� ���� �������� �´��� ����(�� 8��) �� ���� ���� �߾ӿ� �ִ� ���ں��� 
 *    �ð�������� �������� ���ʴ�� ���� ��ȣ�� �ο��Ѵ�.
 *    �� ����, ���������� ��ȣ�� �ο��� ���ڿ� ���� �������� �´��� (���� ��ȣ�� �ο����� ����) ���ڵ� �� ���� ���� �߾ӿ� �ִ� ���ں���
 *    �ð� �������� �������� ���ʴ�� ���� ��ȣ�� �ο��Ѵ�.
 * 
 * 2. 1�� ���� 1���� ���ڸ� Layer 0��� �����ϸ�,
 *    Layer 0�� �ѷ��ΰ� �ִ� 8���� ���� (2 ~ 9)�� Layer 1�̶�� �����Ѵ�.
 *    �������� ������� �Ϲ�ȭ�ϸ� Layer K-1�� �ٱ����� �ѷ��ΰ� �ִ� ���ڵ��� Layer K��� ������ �� �ִ�. (��, K�� ���� ����)
 * 3. �� Layer�� ���ԵǴ� ���ڿ� ��� Ÿ���� ���̸�, �� Layer�� Ÿ�� ���̱Ⱑ �ϼ��ȴ�.
 * 4. Ÿ���� ���� ����, ���� Ÿ�� ���̱Ⱑ �ϼ����� ���� Layer �� ��ȣ�� ���� ���� Layer�� ã�� 
 *    �� Layer�� ������ ���� ������� Ÿ���� ���δ�.
 *    1) ���� �ش� Layer�� Ÿ���� �ϳ��� �پ����� �ʴٸ�, 
 *       �� Layer�� ���� ���� �� ��ȣ�� ���� ���� ���ڿ� Ÿ���� ���δ�.
 *    2) ���� �ش� Layer�� �ϳ� �̻��� Ÿ���� �پ��ִٸ�,
 *       �� Layer�� �����ְ� ���� Ÿ���� �پ����� ���� ���� �� ��ȣ�� ���� ū ���� �Ǵ� ��ȣ�� ���� ���� ���� �� �� ���� 50% Ȯ���� �����Ͽ� Ÿ���� ���δ�.
 * 5. �־��� Ÿ���� ��� ���� ������ 4�� �ܰ踦 �ݺ��Ѵ�.
 * 
 * ������ ������ ������� N���� Ÿ���� �ٿ����� ��, K�� ���ڿ� Ÿ���� �پ����� Ȯ���� ���ϴ� ���α׷��� �ۼ��Ͻÿ�.
 * 
 * ���÷�, N = 4, K = 4�� ��츦 ���캸��.
 * 
 * 	9	(2)	  (3)	||	(3)	(2)	 3		||	(3)	(2)  (4)	||	(4)	(2)	(4)
 *  8	(1)	  (4)	||	(4)	(1)	 4		||	 8	(1)	  4		||	 8	(1)	 4
 *  7	(6)	  (5)	||	 7	 6	 5		||	 7	 6	  5		||	 7	 6	 5
 * 
 * ������ ������ ������δ� 4���� Ÿ���� ���̴� ����� �Ʒ��� ���� 4�����̸�, 
 * 4�� ���ڿ� Ÿ���� �پ��ִ� ���� 1�����̹Ƿ� Ȯ���� 1/4�̴�.
 * (��ȣ �κ��� Ÿ���� �پ��ִ� ���ڸ� ���ϸ�, ��ȣ �κп� �����ִ� ���� Ÿ���� ���̴� ������ ��Ÿ����,
 *  �� �� �κп� �����ִ� ���� �ش� ������ ��ȣ�� ���Ѵ�.
 *  
 * [���ѻ���] 
 *  - ���� Ÿ���� ���� N�� 1 �̻� 300 ������ �ڿ���
 *  - Ÿ���� �پ��ִ��� Ȯ���Ϸ��� ������ ��ȣ K�� 1 �̻� 500 ������ �ڿ����̴�.
 * 
 * [�Է�]
 *  - �� ó�� �׽�Ʈ ���̽��� �� T�� �־�����.
 *    �� ���� �ٺ��� �׽�Ʈ ���̽��� ���ʴ�� �־�����
 *    �� �׽�Ʈ ���̽��� �� �ٷ� �־����� ���̴� Ÿ���� ���� N, Ÿ���� �پ��ִ��� Ȯ���Ϸ��� ������ ��ȣ K�� �������� ���еǾ� ���ʷ� �־�����.
 * 
 * [���]
 *  - �׽�Ʈ ���̽� �ϳ� �� �� �پ� ����Ѵ�.
 *  - �� ó�� #x(x�� �׽�Ʈ ���̽� ��ȣ, 1���� ����)�� ����ϰ�, ������ �ϳ� �� ��,
 *    �������� ������ ������� N���� Ÿ���� �ٿ��� ��, K�� ���ڿ� Ÿ���� �پ����� Ȯ���� ���м� ���·� ����Ѵ�.
 *    �м��� ����, /, �и��� ������� �������� �����Ͽ� ����Ѵ�.
 *    ���� Ȯ���� 1�� ���� "1 / 1"�� ����ϰ�, Ȯ���� 0�� ���� "0 / 1"�� ����Ѵ�.
 *    (����ǥ�� �����ϰ� ���. �ڼ��� ���� �Է�/��� ���� ����)
 *    
 * [�Է� ����]
 * 10	//	�׽�Ʈ ���̽� ����
 * 4 1
 * 4 3
 * 4 4
 * 4 5
 * 4 8
 * 1 1
 * 2 2
 * 3 3
 * 6 8
 * 8 6
 * 
 * [��� ����]
 * #1 1 / 1
 * #2 3 / 4
 * #3 1 / 4
 * #4 0 / 1
 * #5 1 / 4
 * #6 1 / 1
 * #7 1 / 1
 * #8 1 / 2
 * #9 11 / 16
 * #10 11 / 16
 * 
 * 
 */
package SWCert_PRO;

public class Pro_Edu191103_DP_Square {
	
	
	
	
}