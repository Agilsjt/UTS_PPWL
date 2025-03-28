@extends('layouts.app')

@section('content')
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <span>Edit Location</span>
            <a href="{{ route('locations.index') }}" class="btn btn-primary btn-sm">
                <i class="bi bi-arrow-left"></i> Back
            </a>
        </div>
        <div class="card-body">
            <form action="{{ route('locations.update', $location->id) }}" method="post">
                @csrf
                @method('PUT')

                <div class="mb-3 row">
                    <label for="nama" class="col-md-4 col-form-label text-md-end text-start">Nama</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('nama') is-invalid @enderror"
                            id="nama" name="nama" value="{{ old('nama', $location->nama) }}">
                        @error('nama')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="alamat" class="col-md-4 col-form-label text-md-end text-start">Alamat</label>
                    <div class="col-md-6">
                        <textarea class="form-control @error('alamat') is-invalid @enderror" id="alamat"
                            name="alamat">{{ old('alamat', $location->alamat) }}</textarea>
                        @error('alamat')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="kota" class="col-md-4 col-form-label text-md-end text-start">Kota</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('kota') is-invalid @enderror"
                            id="kota" name="kota" value="{{ old('kota', $location->kota) }}">
                        @error('kota')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="provinsi" class="col-md-4 col-form-label text-md-end text-start">Provinsi</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('provinsi') is-invalid @enderror"
                            id="provinsi" name="provinsi" value="{{ old('provinsi', $location->provinsi) }}">
                        @error('provinsi')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="kode_pos" class="col-md-4 col-form-label text-md-end text-start">Kode Pos</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('kode_pos') is-invalid @enderror"
                            id="kode_pos" name="kode_pos" value="{{ old('kode_pos', $location->kode_pos) }}">
                        @error('kode_pos')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="negara" class="col-md-4 col-form-label text-md-end text-start">Negara</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('negara') is-invalid @enderror"
                            id="negara" name="negara" value="{{ old('negara', $location->negara) }}">
                        @error('negara')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>

                <div class="mb-3 row">
                    <input type="submit" class="col-md-3 offset-md-5 btn btn-primary" value="Update">
                </div>
            </form>
        </div>
    </div>
@endsection
