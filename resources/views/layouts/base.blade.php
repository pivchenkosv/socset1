<!DOCTYPE html>
<html>
    <head>
        <style> #line_block { 
            width:50px; 
            height:50px; 
            background:#A9A9A9; 
            float: right;
            margin: 10px 5px 5px 15px; 
            text-align:right;
            padding: 10px;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}" >
        <meta charset="utf-8">
        <title>Avto</title>
    </head>
    <body>
        <div class="header">
            <div class="header1">
            <table width="100%">
            <tr>
                <th align="left" width="60%">
                    <font face="algerian" color="RoyalBlue" style="font-size:40px"><i><b>Avto</b></i></font>
                </th>
                <th align="right">
                    <table>
                        <div id="basket";>
                            <tbody>
                                <tr style="display: none;" class="hPb">
                                    <td>Выбрано:&nbsp;&nbsp;</td>
                                    <td><span id="totalGoods">0</span> товаров</td>
                                </tr>
                                <tr style="display: none;" class="hPb">
                                    <td>Сумма: &asymp; </td>
                                    <td><span id="totalPrice">0</span> руб.</td>
                                </tr>
                                <!--<tr style="display: none;" class="hPb">
                                    <td>Куки:</td>
                                    <td><span id="gugu">0</span> </td>
                                </tr>-->
                                <tr style="display: table-row;" class="hPe">
                                    <td colspan="2">Корзина пуста</td>
                                </tr>
                                <tr>
                                    <td><a style="display: none;" id="clearBasket" href="#">Очистить</a></td>
                                    <td><a style="display: none;" id="checkOut" href="#">Оформить</a></td>
                                </tr>
                            </tbody>
                        </div>
                    </table>
                </th>   
                <th align="center" width="20%">
                <ul>
                @guest
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li>
                                <a href="{{asset('home')}}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                             </li>
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
 

                        @endguest
                </ul>
                </th>
                  
 
          </tr>
            </table>
            </div>
        </div>
        <br>
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
