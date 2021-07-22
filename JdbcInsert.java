package kr.co.koo.jdbc.basic;

import java.sql.*;
import java.util.*;

public class JdbcInsert {

	public static void main(String[] args)   {
		Scanner sc = new Scanner(System.in);
		System.out.println("회원정보 입력을 시작합니다.");
		System.out.println("아이디: ");
		String id = sc.next();

		System.out.println("비밀번호: ");
		String pw = sc.next();
		
		System.out.println("이름: ");
		String name = sc.next();
		
		System.out.println("이메일: ");
		String email = sc.next();
		// TODO Auto-generated method stub
		//순서
		//1. db사용자 계정명과 암호, url등 초기 데이터 변수 설정
		String uid ="root";
		String upw = "aa547716612!";
		String url = "jdbc:mysql://localhost:3306/jsp_practice";
		Connection conn = null;
		Statement stmt = null;
		//2. 드라이버 호출
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//3. db연동을 위한 클래스들의 객체 생성
			/*
			 * a - Connection 객체: DB와의 연결을 위한 객체 생성하려면 new연산자로 생성 불가능
			 * DriverManager클래스가 제공하는 메소드 getConnection()을 호출하여 객체 생성
			 */
			conn = DriverManager.getConnection(url, uid, upw);
			/*
			 * Statement 객체 : sql문 실행을 위한 객체
			 * Connection 객체가 제공하는 createStatement 메소드를 호출하여 생성
			 */
			stmt = conn.createStatement();
			/*
			 * sql문은 string 형태로 작성
			 */
			String sql = "insert into member values" + "('"+id+"','"+pw+"','"+name+"','"+email+"')";
			/* 
			 * Statement 객체를 통한 실행 
			 * insert, update, delete경우 executeupdate를 호출
			 * select명령일 경우 executequery를 호출
			 * executeupdate는 실행 성공시 성공한 쿼리의 개수를, 실패시 0을 리턴
			 */
			int resultNum = stmt.executeUpdate(sql);
			if(resultNum == 1) {
				System.out.println("DB에 회원정보 저장 성공");
			}	else {
				System.out.println("회원정보 저장 실패");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			/*
			 * db연동 객체들 반납 
			 * 원활한 프로그래밍을 위해 자원들을 반납
			 */
			try {
				stmt.close();
				conn.close();
				sc.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
