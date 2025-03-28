@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        Location Information
                    </div>
                    <div class="float-end">
                        <a href="{{ route('locations.index') }}" class="btn btn-primary btn-sm">&larr; Back</a>
                    </div>
                </div>
                <div class="card-body">

                    <!-- Nama -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Nama:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->nama }}
                        </div>
                    </div>

                    <!-- Alamat -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Alamat:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->alamat ?? '-' }}
                        </div>
                    </div>

                    <!-- Kota -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Kota:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->kota ?? '-' }}
                        </div>
                    </div>

                    <!-- Provinsi -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Provinsi:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->provinsi ?? '-' }}
                        </div>
                    </div>

                    <!-- Kode Pos -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Kode Pos:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->kode_pos ?? '-' }}
                        </div>
                    </div>

                    <!-- Negara -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Negara:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $location->negara ?? '-' }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection