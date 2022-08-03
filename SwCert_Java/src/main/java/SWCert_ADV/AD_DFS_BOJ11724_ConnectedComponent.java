/*	연결 요소의 개수_BOJ11724
[문제]
방향 없는 그래프가 주어졌을 때, 연결 요소 (Connected Component)의 개수를 구하는 프로그램을 작성하시오.

[입력]
첫째 줄에 정점의 개수 N과 간선의 개수 M이 주어진다. (1 ≤ N ≤ 1,000, 0 ≤ M ≤ N×(N-1)/2) 둘째 줄부터 M개의 줄에 간선의 양 끝점 u와 v가 주어진다. (1 ≤ u, v ≤ N, u ≠ v) 같은 간선은 한 번만 주어진다.

[출력]
첫째 줄에 연결 요소의 개수를 출력한다.

[입력 예시]
2
6 5
1 2
2 5
5 1
3 4
4 6

6 8
1 2
2 5
5 1
3 4
4 6
5 4
2 4
2 3

[출력 예시]
#1 2
#2 1
 */
package SWCert_ADV;

import java.io.*;
import java.util.*;

public class AD_DFS_BOJ11724_ConnectedComponent {
	static int N, M;	//	정점의 개수 N, 간선의 개수 M
	static ArrayList<Integer> Arr[];	//	간선 정보 저장
	static int AnsN;	//	결과값 : 연결 요소의 개수
	
	static int Stat[];	//	정점 방문 여부 체크
	
	public static void main(String args[]) throws Exception{
		
	}	//	End Main
}	//	End Class