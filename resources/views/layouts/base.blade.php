<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}" >
        <meta charset="utf-8">
        <title>avto</title>
    </head>
    <body>
        <div class = "header"> Авто </div>
            <div class="menu">
         <a href = "{{asset('about')}}"> About us </a>  
         <a href = "{{asset('catalogs')}}"> Services </a>  
         <a href = "{{asset('contacts')}}"> Contacts </a> 
         <a href = "{{asset('images')}}"> Images </a>
    </div>
        <div class= "content">
         @yield('content')
        </div>
        <div class = "footer"> Copyright rzhpiv </div>
    </body>
</html>
