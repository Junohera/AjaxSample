<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script>
        var ajaxGET = function() {
            $.ajax({
                url: 'ajaxCall?requestValue=겟방식 데이터 전송 !!!',
                type: 'GET',
                contentType: 'application/json',
                async: true, // 기본값 true이나 명시적 true추가
            })
            .done(function(response) {
                console.log("응답 받고나면 실행되는 문맥");
                console.log(response);
                $(".httpResult").text(JSON.stringify(response, undefined, 2));
            });

            console.log("요청과 응답과 상관없이 실행되는 문맥");
        };

        var ajaxPOST = function() {
            $.ajax({
                url: 'ajaxCall',
                type: 'POST',
                contentType: 'application/json',
                data: "포스트방식 데이터 전송 !!!",
                async: true, // 기본값 true이나 명시적 true추가
            })
            .done(function(response) {
                console.log("응답 받고나면 실행되는 문맥");
                console.log(response);
                $(".httpResult").text(JSON.stringify(response, undefined, 2));
            });

            console.log("요청과 응답과 상관없이 실행되는 문맥");
        };

        var ajaxHtml = function() {
            $.ajax({
                url: 'syncCall',
                type: 'GET',
                content: 'html',
                data: 'syncCall',
            })
            .done(function(response) {
                $("body").append(response);
                $(".httpResult").text("ajax로 요청했는데 서버에서 여전히 jsp를 연산하여 html을 응답하게될 경우...");
            })
        }
    </script>
</head>
<body>
    <h1 id="target">
        ajaxTets
    </h1>
    <h2>
        통신결과 :
        <span class="httpResult">통신 전</span>
    </h2>

    <p>before ajaxCall</p>

    <button><a href="index">홈으로</a></button>
    <button onclick="ajaxGET();">ajax GET</button>
    <button onclick="ajaxPOST();">ajax POST</button>
    <button onclick="ajaxHtml();">html응답</button>

</body>
</html>