<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}" >
        <meta charset="utf-8">
        <title>Avto</title>
    </head>
    <body>
        @if(Auth::user())
        <a href="{{asset('/home')}}">{{Auth::user()->name}}</a>
        <a href="{{asset('/logout')}}">Выход</a>
        
        @else
        <a href="{{asset('/login')}}">login</a>
        <a href="{{asset('/register')}}">register</a>
        @endif
        
        <div id="basket">
<table>
<tbody>
<tr style="display: none;" class="hPb">
<td>Выбрано:</td>
<td><span id="totalGoods">0</span> товаров</td>
</tr>
<tr style="display: none;" class="hPb">
<td>Сумма: &asymp; </td>
<td><span id="totalPrice">0</span> руб.</td>
</tr>
<tr style="display: none;" class="hPb">
<td>Куки:</td>
<td><span id="gugu">0</span> </td>
</tr>
<tr style="display: table-row;" class="hPe">
<td colspan="2">Корзина пуста</td>
</tr>
<tr>
<td><a style="display: none;" id="clearBasket" href="#">Очистить</a></td>
<td><a style="display: none;" id="checkOut" href="#">Оформить</a></td>
</tr>
</tbody>
</table>
</div>
        
        <div class = "header"> Avto </div>
            <div class="menu">
         <a href = "{{asset('about')}}"> About us </a>  
         <a href = "{{asset('catalogs')}}"> Services </a>  
         <a href = "{{asset('contacts')}}"> Contacts </a> 
         <!--<a href = "{{asset('images')}}"> Images </a>-->
    </div> <br>
        <div style = "content">
         @yield('content')
        </div>
        <div class = "footer"> Copyright rzhpiv </div>
        <script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
        <script src="{{asset('js/jquery.cookie.js')}}"></script>
    <script src="{{asset('js/cart.js')}}"></script>
    </body>
</html>
