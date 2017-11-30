<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery-2.0.0.js"></script>
<title>Insert title here</title>
</head>
<body>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<section>
	  <div class="container gal-container">
	    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
	      <div class="box">
	        <a href="#" data-toggle="modal" data-target="#1">
	          <img src="http://nabeel.co.in/files/bootsnipp/gallery/1.jpg" style="width: 300px; height: 300px;">
	        </a>
	        <div class="modal fade" id="1" tabindex="-1" role="dialog">
	          <div class="modal-dialog" role="document">
	            <div class="modal-content">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	              <div class="modal-body">
	              <div style="width: 50%; height: 400px; border: 1px solid blue; display: inline;">
	                <img src="http://nabeel.co.in/files/bootsnipp/gallery/1.jpg" style="width: 300px; height: 400px; display: inline;">
	               </div>
	                <div style="border: 1px solid red; width: 50%; height: 400px; display: inline;">
	                </div>
	                <div style="border: 1px solid green;">
	                </div>
	              </div>
	                <div class="col-md-12 description">
	                </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	</div>
	</section>
	
</body>
</html>