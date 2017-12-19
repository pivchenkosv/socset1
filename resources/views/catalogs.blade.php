
@extends('layouts.base')
@section('content')

<style>
#line_block { 
        width:400px; 
        height:300px; 
        background:#f1f1f1; 
        float:left; 
        margin: 10px 5px 5px 15px; 
        text-align:center;
        padding: 10px;
        }
</style>


@foreach($catalogs as $catalog)
<div class="maintext" id="line_block"><a href="{{asset('catalog/'.$catalog->id)}}">{{$catalog -> name}}</a><br><br>
<a href="{{asset('catalog/'.$catalog->id)}}">{!!$catalog -> body!!}</a></div>
@endforeach

@endsection