package kr.ac.kopo.board;


/*
 * 자바 비즈 클래스 규칙 
 * 1. 패키지를 포함 
 * 2. class 접근 제한자 public 
 * 3. 기본생성자 선언
 * 4. 멤버변수 접근 제한자는 private여야함 
 * 5. setter와 getter 메소드가 존재해야 함.
 * 
 */



public class BoardVO {
	private int no;
	private String title;
	//이런걸 갖고 있다고 해보자! 
	
	
	public BoardVO() {
		
		
		
	}

	//getter와 setter를 만들어내자! 
	
	
	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}

	//이것이 java beanse class임.
	
	
	

}
