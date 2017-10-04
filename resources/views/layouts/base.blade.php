<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}" >
        <meta charset="utf-8">
        <title>socset</title>
    </head>
    <body>
        <div class = "header"> Header </div>
            <div class="menu">
         <a href = "{{asset('about')}}"> About us </a>  
         <a href = "services"> Services </a>  
         <a href = "contacts"> Contacts </a>  
    </div>
        <div class= "content">
         @yield('content')
        </div>
        <div class = "footer"> Copyright rzhpiv </div>
    </body>
</html>
