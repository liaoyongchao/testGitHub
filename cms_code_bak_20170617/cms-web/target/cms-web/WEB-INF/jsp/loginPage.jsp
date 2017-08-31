<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!--<meta http-equiv="refresh" content="0;url=/">-->
  <title>CMS 登陆</title>
  <link href="<%=request.getContextPath()%>/static/css/style_log.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/userpanel.css">
</head>

<body class="login" mycollectionplug="bind">
  <div class="login_m">

    <!--展示logo-->
    <!--<div class="login_logo">
    <img src="<%=request.getContextPath()%>/static/images/logo.png" width="196" height="46"></div>
  -->
    <div class="login_boder">

      <div class="login_padding" id="login_model">
        <div style="color:#FF0000" id="errmsg"></div>
        <h2>USERNAME</h2>
        <label>
        <input type="text" name="accout" id="accout" class="txt_input txt_input2" onfocus="if (value ==&#39;Your accout&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your accout&#39;}" value="Your accout"></label>
        <h2>PASSWORD</h2>
        <label>
        <input type="password" name="password" id="password" class="txt_input" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="******"></label>
        <!--忘记密码-->
        <!--<p class="forgot">
      <a id="iforget" href="javascript:void(0);">Forgot your password?</a>
    </p>
    -->
        <div class="rem_sub">
          <!--<div class="rem_sub_l">
      <input type="checkbox" name="checkbox" id="save_me">
      <label for="checkbox">Remember me</label>
    </div>
    -->
          <br>

          <label>
      <input type="submit" onclick="submitLogin()" class="sub_button" name="button" id="button" value="SIGN-IN" style="opacity: 0.7;"></label>
        </div>
      </div>
      <br />
      <br /></body>
<script>

  function submitLogin() {
  
    var url = "<%=request.getContextPath()%>/login";
    
    var data = {
        accout: $("input[name='accout']").val(),
        password: $("input[name='password']").val()
    };

    $.post(url, data, function (result) {
        if (result == "success") {
          $("#errmsg").html("")
          location.href = "/"
        }else{
          $("#errmsg").html(result)
        }
    });
    
}

</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery/jquery.min.js"></script>

</html>