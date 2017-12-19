@extends('layouts.base')
@section('content')
    <h2>{{$product -> name}}</h2>
    <div class="maintext" align = "center"> 
    <a href="#" id="good-{{$product->id}}-{{$product->currency}}" class="addCart" >Add to cart</a>
        {!!$product -> body!!}
    <img src = "{{asset('uploads/'.$product -> picture)}}" ><br>
    VIP: {{$product -> vip}} <br>    
    Status: {{$product -> status}} <br>
    Price: {{$product -> currency}} $<br>
    Description: {{$product -> small_description}} <br>
</div>
@endsection