<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    <!--html 주석 -->
<%-- jsp 주석  --%>
<%--
	<%@ ~ %> : 디렉티브 , 대부분 자동으로 입력된다. 설정에 관련된 정보를 적는다.
	<%! ~ %> : 선언부, 프로그램에서 사용할 변수나 메서드를 정의한다. => 자바 파일로 뽑아내서 처리한다.
	<% ~ %>  : 스크립트 릿, 일반적인 jsp 코드를 적는다. => jstl로 대체해서 사용한다.
	<%= ~ %> : 표현식, 변수에 저장된 데이터나 연산결과를 출력한다. => EL(${ ~})로 대체해서 사용한다.

--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보입력</title>
</head>
<body>
<!-- 
	html은 spacebar을 여러번 눌러도 한 칸 밖에 띄어지지 않고 enter키를 눌러도 줄이 바뀌지 않는다.
	2칸 이상 띄우기 :  &nbsp;를 띄울 칸의 개수만큼 입력
	줄바꿈 			:  <br>태그 사용
	
	현재 페이지에 입력한 데이터를 특정 페이지로 전송하려면 전송할 데이터를 입력하는 코드를 <form> ~</form> 태그 내부에 작성한다.
	
	action 속성에는 전송(submit) 버튼이 클릭되면 form에 입력한 데이터가 전송될 페이지 이름을 적는다. 
		=> action의 ""칸에 ? 만 적으면 현재 페이지로 남는다.
	
	method 속성에는 action 페이지로 데이터가 전송 될 때 전송되는 정보가 url창에 표시되는 여부를 지정한다.
		=> get이 기본값이며 전송되는 데이터가 url창에 표시되고 post로 변경하면 전송되는 정보가 url에 표시되지 않는다.
		
 -->

<form action="myInfoOK.jsp"  method ="post">
<%-- input 앞에 쓰면 레이블 같은 느낌. size 는 크기, maxlength 는 최대 받는 글자수 --%>
	이&nbsp;&nbsp;름&nbsp;&nbsp; : <input type="text" name="name"/><br/>
	아&nbsp;이&nbsp;디 : <input type="text" name="id"/><br/>
<!--type이 password일 경우 한글을 타이핑해서 입력할 수 없다.(복붙하면 나오기는 한다)  -->
	비밀번호 : <input type="password" name ="password"/><br/>
	나&nbsp;&nbsp;이 &nbsp;&nbsp;: <input type="text" name="age"/><br/>

<!-- radio와 checkbox는 같은 그룹끼리 반드시 같은 이름의 name속성을 지정해 줘야한다. 
	 radio와 checkbox는 컨트롤 자체를 브라우저에 표시하는 기능밖에 없기 때문에 
	 다음 페이지로 넘겨줄 데이터를 value속성으로 넣어줘야한다. 
	 	=> checked ="checked" : 기본 체크를 원할 시 사용 
-->
	성&nbsp;&nbsp;별&nbsp;&nbsp; : <input type="radio" name ="gender"  value="true" checked ="checked">남자
								   <input type="radio" name ="gender" value="false">여자<br/>
	취&nbsp;&nbsp;미&nbsp;&nbsp; : <input type="checkbox" name ="hobbies" value="늦잠자기">늦잠자기									
	 	   						   <input type="checkbox" name ="hobbies" value="지각하기">지각하기									
		   						   <input type="checkbox" name ="hobbies" value="게임하기">게임하기	<br/>								

<!-- 콤보상자 만들기 -->
	가고 싶은 여행지
	<select name ="travel">
	<option>프라하</option>
	<option>슬로바키아</option>
	<option>헝거리</option>
	<option>이탈리아</option>
	<option selected="selected">하와이</option>
	<option>괌</option>
	
	</select><br/>

<!-- TextArea 만들기 
	textarea는 별도로 value속성을 가지지 않지만 <textarea> ~ </textarea> 사이에 입력한 데이터를 value로 인식한다.
	<textarea>와 </textarea> 사이에는 칸을 띄우거나 줄을 변경하지 않는다.
 -->
 
	<textarea rows="10" cols="50" name="content"></textarea><br/>			





									
	<input type="submit" value="회원가입"/>
	<input type="reset" value="다시쓰기"/><br/>
	
	
</form>



</body>
</html>