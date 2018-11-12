<#import "/spring.ftl" as spring/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>LibraryApp</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</head>

<body class="text-center">

<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <textarea class="form-control" id="quizJson" rows="12">Enter_your_json</textarea>
        </div>
        <div class="col-md-4">
            <h4>Errors will be here:</h4>
            <div style="max-height:265px;" class="pre-scrollable" id="results"></div>
        </div>
    </div>
    <br>
    <button class="btn btn-primary btn-block" type="button">Validate</button>
    <br>
    <form action="/logout" method="post">
        <button class="btn btn-info btn-block" type="submit">Sign out</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>
    <br>
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div id="vis_graph"></div>
        </div>
    </div>
</div>

</body>
</html>
