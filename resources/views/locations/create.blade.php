@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        Tambah Lokasi Baru
                    </div>
                    <div class="float-end">
                        <a href="{{ route('locations.index') }}" class="btn btn-primary btn-sm">&larr; Kembali</a>
                    </div>
                </div>

                <div class="card-body">
                    <form action="{{ route('locations.store') }}" method="post">
                        @csrf

                        <!-- Nama Lokasi -->
                        <div class="mb-3 row">
                            <label for="nama" class="col-md-4 col-form-label text-md-end text-start">Nama Lokasi</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('nama') is-invalid @enderror"
                                    id="nama" name="nama" value="{{ old('nama') }}">
                                @error('nama')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Alamat -->
                        <div class="mb-3 row">
                            <label for="alamat" class="col-md-4 col-form-label text-md-end text-start">Alamat</label>
                            <div class="col-md-6">
                                <textarea class="form-control @error('alamat') is-invalid @enderror"
                                    id="alamat" name="alamat">{{ old('alamat') }}</textarea>
                                @error('alamat')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Kota -->
                        <div class="mb-3 row">
                            <label for="kota" class="col-md-4 col-form-label text-md-end text-start">Kota</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('kota') is-invalid @enderror"
                                    id="kota" name="kota" value="{{ old('kota') }}">
                                @error('kota')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Provinsi -->
                        <div class="mb-3 row">
                            <label for="provinsi" class="col-md-4 col-form-label text-md-end text-start">Provinsi</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('provinsi') is-invalid @enderror"
                                    id="provinsi" name="provinsi" value="{{ old('provinsi') }}">
                                @error('provinsi')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Kode Pos -->
                        <div class="mb-3 row">
                            <label for="kode_pos" class="col-md-4 col-form-label text-md-end text-start">Kode Pos</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('kode_pos') is-invalid @enderror"
                                    id="kode_pos" name="kode_pos" value="{{ old('kode_pos') }}">
                                @error('kode_pos')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Negara -->
                        <div class="mb-3 row">
                            <label for="negara" class="col-md-4 col-form-label text-md-end text-start">Negara</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('negara') is-invalid @enderror"
                                    id="negara" name="negara" value="{{ old('negara') }}">
                                @error('negara')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <!-- Tombol Submit -->
                        <div class="mb-3 row">
                            <input type="submit" class="col-md-3 offset-md-5 btn btn-primary" value="Tambah Lokasi">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection