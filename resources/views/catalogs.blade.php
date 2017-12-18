
@extends('layouts.base')
@section('content')
    
@foreach($catalogs as $catalog)    
<a href="{{asset('catalog/'.$catalog->id)}}">{{$catalog -> name}}</a><br>
    <div class="maintext"> {!!$catalog -> body!!}</div>
@endforeach
@endsection