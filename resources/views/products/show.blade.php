@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        Product Information
                    </div>
                    <div class="float-end">
                        <a href="{{ route('products.index') }}" class="btn btn-primary btn-sm">&larr; Back</a>
                    </div>
                </div>
                <div class="card-body">

                    <!-- Name -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Name:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->name }}
                        </div>
                    </div>

                    <!-- Description -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Description:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->description ?? '-' }}
                        </div>
                    </div>

                    <!-- Stock -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Stock:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->stock }}
                        </div>
                    </div>

                    <!-- Price -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Price:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            ${{ number_format($product->price, 2) }}
                        </div>
                    </div>

                    <!-- Sold -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Sold:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->sold }}
                        </div>
                    </div>

                    <!-- Location -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Location:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->location->nama ?? '-' }}
                        </div>
                    </div>

                    <!-- Category -->
                    <div class="mb-3 row">
                        <label class="col-md-4 col-form-label text-md-end text-start"><strong>Category:</strong></label>
                        <div class="col-md-6" style="line-height: 35px;">
                            {{ $product->category->name ?? '-' }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection