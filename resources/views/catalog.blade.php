
@extends('layouts.base')
@section('content')
    <h2>{{$catalog -> name}}</h2>
    <div class="maintext"> {!!$catalog -> body!!}</div>
@endsection