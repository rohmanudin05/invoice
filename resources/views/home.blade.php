@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Aplikasi Invoice Penjualan</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in! | Repost by <a href='https://temabatuah.com/' title='temabatuah.com' target='_blank'>Temabatuah.com</a>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
