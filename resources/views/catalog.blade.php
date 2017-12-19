
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

    <h2>{{$catalog -> name}}</h2>
    <!--<div class="maintext"> {!!$catalog -> body!!}</div>-->

@foreach($products as $one)
<div class="maintext" id="line_block"><a href = "{{asset('product/'.$one -> id)}}">{{$one -> name}}</a><br>
    <a href = "{{asset('product/'.$one -> id)}}"><img src = "{{asset('uploads/thumb/'.$one -> picture)}}"></a><br></div>
@endforeach
@endsection