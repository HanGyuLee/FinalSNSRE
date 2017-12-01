<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

$(function() {        
    // Geolocation API에 액세스할 수 있는지를 확인
    if (navigator.geolocation) {
        //위치 정보를 얻기
        navigator.geolocation.getCurrentPosition (function(pos) {
           $('#latitude').html(pos.coords.latitude);     // 위도
            $('#longitude').html(pos.coords.longitude); // 경도
            alert($("#latitude").html());
            googleapisView();
        });
    } else {
        alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
    }
});




function googleapisView() {
    var lat = $("#latitude").html(); // 위도
    var lng = $("#longitude").html(); // 경도
    var geocode = "http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=false";
    jQuery.ajax({
        url: geocode,
        type: 'POST',
           success: function(myJSONResult){
                    if(myJSONResult.status == 'OK') {
                        var tag = "";
                        var i;
                          tag += "주소 : " +myJSONResult.results[0].formatted_address+" <br />";
                     
                        document.getElementById("message").innerHTML = tag;
                    } else if(myJSONResult.status == 'ZERO_RESULTS') {
                        alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
                    } else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
                        alert("할당량이 초과되었습니다.");
                    } else if(myJSONResult.status == 'REQUEST_DENIED') {
                        alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
                    } else if(myJSONResult.status == 'INVALID_REQUEST') {
                        alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
                    }
            }
    });
 
}
/* googleapisView(); */
</script>
</head>
<body>

</body>
</html>