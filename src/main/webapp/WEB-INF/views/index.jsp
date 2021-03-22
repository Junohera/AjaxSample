<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h1>
        Asynchronous Javascript And XML
        <br>
        JavaScript를 사용한 비동기 통신, 클라이언트와 서버간에 XML 데이터를 주고받는 기술
    </h1>

    <textarea name="" id="" cols="30" rows="10">
        기존의 웹페이지는 form을 통해 요청값을 보내면 그에 대응하는 DB처리 후, 또다시 html을 응답하도록 되어있다.
        이 때 생각할 수 있는건, 과연 모든 요청에 대하여 전부 html을 다시 렌더링할 필요가 있을까?
        흔한 사례를 들어본다면 우리가 SNS에서 좋아요를 눌렀을때, 다들 알다시피 하트의 색깔과 하트수만 바뀌면 된다.
        만약 기존의 방식으로 진행된다면, 좋아요를 누를때 모든 화면이 새로고침된다.
        결국 클라이언트로서(웹이든 앱이든) 서버와의 통신을 굳이 동기식으로 할 필요는 없다.
    </textarea>

    <a href="ajaxTest">ajax테스트 페이지</a>
</body>
</html>