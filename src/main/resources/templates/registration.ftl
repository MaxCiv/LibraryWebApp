<#import "/spring.ftl" as spring/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>LibraryApp</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <#include "styleLogin.ftl">
</head>

<body class="text-center">
<form class="form-signin" action="/registration" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <h1 class="h3 mb-3 font-weight-normal">Registration</h1>

    <label for="inputName" class="sr-only">Name</label>
    <input type="text" id="inputName" class="form-control input-top" name="name" placeholder="Name" required autofocus>

    <label for="inputUsername" class="sr-only">Username</label>
    <input type="text" id="inputUsername" class="form-control input-middle" name="username" placeholder="Login" required>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control input-bottom" name="password" placeholder="Password" required>

    <#if message??>
        <p>${message}</p>
    </#if>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2018</p>
</form>
</body>
</html>
