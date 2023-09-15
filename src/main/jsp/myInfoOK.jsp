<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myInfo.jsp에서 전송된 데이터 확인하기</title>
</head>
<body>

myInfoOK.jsp 페이지 입니다.<br/>
<!-- myInfo.jsp에서 넘어오는 데이터를 받는다  -->
<%
//	jsp코드(java)

//	form에 입력된 데이터가 post 방식으로 전송될 때 한글이 깨지는 현상을 방지하기
//	최초의 getParameter() 메서드가 실행되기 전에 아래의 내용을 코딩하면 한글이 깨지는 현상을 방지할 수 있다.

	request.setCharacterEncoding("UTF-8");

//	tomcat server 7.0 이전 버전에서는 get 방식을 사용할 때도 한글이 깨진다.
//	get 방식을 사용하는데 한글이 깨질 경우
//		=> Servers 폴더의 server.xml 파일을 열고 64번 줄의 Connector 태그에 URIEncoding="UTF-8"을 적어줘야한다.(서버를 설치하고 딱 한번만 하면된다)

//	request.getParameter("name 속성"); : 이전 페이지에서 넘어오는 데이터를 받는다. => 넘어오는 데이터는 무조건 문자열로 넘어온다.

	String name = request.getParameter("name");
	out.println("이름 : "+ name + "<br/>");
	
	String id = request.getParameter("id");
	out.println("아이디 : "+ id+ "<br/>");
	
	String password = request.getParameter("password");
	out.println("비밀번호 : "+ password + "<br/>");

//	정수 받아오기	
//	getParameter로 받아온건 String 이므로 정수로 받을 때는 Integer.parseInt로 형변환 해준다.
//	정수를 입력하지 않았을 때의 오류를 방지하기 위해 try catch를 써준다
	int age = 0;
	try{
		age = Integer.parseInt(request.getParameter("age"));
		out.println("나이 : "+ age +"<br/>");
		
	}catch(Exception e){
//		out.println("잘못된 나이가 입력되었습니다.<br/>");			
		out.println("<script>");
//		alert('내용') : 경고창 띄우기
		out.println("alert('잘못된 나이가 입력되었습니다')");
		out.println("</script>");
	
	}
//	boolean값 받아오기
	boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
	out.println(name+"님은 " + (gender? "남자":"여자") +"입니다.<br/>");
	
//  채크박스 값 받아오기	
//	checkbox는 여러 항목을 선택할 수 있는데 getParameter()메서드를 이용해서 받으면 맨 처음에 선택한 값 한개만 가져온다.
//	checkbox에서 넘어오는 데이터를 받을 때는 넘어오는 항목이 여러개일 수 있기 때문에 getParameterValues()메서드를 받아서 배열에 저장한다.
//  배열에 저장하기 때문에 반복문을 사용해서 출력해야한다

	String[] hobbies = request.getParameterValues("hobbies");
	out.println(name+"님의 취미는");
//  취미가 선택되지 않으면 hobbies.length가 0이기 때문에 예외처리를 해준다.
	try{
		for(int i =0; i< hobbies.length; i++){
			if(i>0){
				out.println(",");			
			}
			out.println(hobbies[i]);
		}
	}catch(Exception e){
		out.println(" 취미가 없음");
	}
		out.println(" 입니다.<br/>");
	
//	콤보박스 값 받아오기 		
	String travel  = request.getParameter("travel");
	out.println(name+"님이 가고싶은 여행지는 "+travel+"입니다 <br/>");
		
//  텍스트필드
	String content = request.getParameter("content");

//	태그사용 가능, 줄바꿈 불가능
//	out.println(name + "님이 남긴 말" +content+"<br/>");
	
//	태그사용 불가능, 줄바꿈 불가능
// 	작다(<) : &lt; , 크다(>) : &gt; 
//	out.println(name + "님이 남긴 말" +content.replace("<", "&lt;").replace(">", "&gt;")+"<br/>");
	
//	태그사용 가능, 줄바꿈 불가능
//	out.println(name + "님이 남긴 말" +content.replace("\r\n", "<br/>")+"<br/>");

//	태그사용 불가능, 줄바꿈 가능(순서 바꾸면 안된다.)
	out.println(name + "님이 남긴 말<br/>" +content.replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br/>")+"<br/>");
%>

</body>
</html>
