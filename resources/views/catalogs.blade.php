
@extends('layouts.base')
@section('content')

<link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}" >

<style>
#line_block { 
        width:400px; 
        height:300px; 
        background:#A9A9A9; 
        float:left; 
        margin: 10px 5px 5px 15px; 
        text-align:center;
        padding: 10px;
}
</style>


@foreach($catalogs as $catalog)
<div  class="maintext" id="line_block"><a href="{{asset('catalog/'.$catalog->id)}}">{{$catalog -> name}}</a><br><br>
<a href="{{asset('catalog/'.$catalog->id)}}">{!!$catalog -> body!!}</a></div>
@endforeach

@endsection