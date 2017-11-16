
@extends('layouts.base')
@section('content')
    <h2>{{$catalog -> name}}</h2>
    <div class="maintext"> {!!$catalog -> body!!}</div>
@foreach($products as $one)
<a href = "{{asset('product/'.$one -> id)}}">{{$one -> name}}</a><br>
<img src = "{{asset('uploads/thumb/'.$one -> picture)}}"><br>
@endforeach
@endsection