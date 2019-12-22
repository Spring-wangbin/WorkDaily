<%--
  Created by IntelliJ IDEA.
  User: wangbin
  Date: 2019-12-22
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
    <link href="jsp/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="jsp/lib/ligerUI/skins/Gray2014/css/all.css" rel="stylesheet" />
    <script src="jsp/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="jsp/lib/ligerUI/js/ligerui.all.js"></script>
    <script src="jsp/lib/jquery-validation/jquery.validate.min.js"></script>
    <script src="jsp/lib/jquery-validation/jquery.metadata.js"></script>
    <script src="jsp/lib/jquery-validation/messages_cn.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $("#form1").ligerForm({
                validate: true
            });
        });


    </script>
    <style type="text/css">
        body
        {
            padding-left:10px;
            font-size:13px;
        }
        h1
        {
            font-size:20px;
            font-family:Verdana;
        }
        h4
        {
            font-size:16px;
            margin-top:25px;
            margin-bottom:10px;
        }

        td {
            padding: 5px;
        }

    </style>
</head>
<body style="padding:10px">
    <div>
        <h1>用户登录：</h1>
        <form id="form1" action="/user/login" method="post">
            <table>
                <tr>
                    <td>
                        <label for="textbox1">用户名：</label>
                    </td>
                    <td>
                        <input id="textbox1"  name="username" type="text" class="ui-textbox"  validate="{required:true}"  />${errMsg1}
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="pwd1">Password：</label>
                    </td>
                    <td>
                        <input id="pwd1" name="password" type="password" class="ui-password"  validate="{required:true}" />${errMsg2}
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="登录">
                    </td>
                    <td>
                        <input type="reset" name="重置">
                    </td>
                </tr>
            </table>
        </form>
        <div>${errMsg}</div>
    </div>
</body>
</html>
