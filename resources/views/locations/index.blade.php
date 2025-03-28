@extends('layouts.app')

@section('content')
    <div class="card">
        <div class="card-header">Location List</div>
        <div class="card-body">
            @can('create-location')
                <a href="{{ route('locations.create') }}" class="btn btn-success btn-sm my-2">
                    <i class="bi bi-plus-circle"></i> Add New Location
                </a>
            @endcan

            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">City</th>
                        <th scope="col">Province</th>
                        <th scope="col">Postal Code</th>
                        <th scope="col">Country</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($locations as $location)
                        <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $location->nama }}</td>
                            <td>{{ $location->alamat }}</td>
                            <td>{{ $location->kota }}</td>
                            <td>{{ $location->provinsi }}</td>
                            <td>{{ $location->kode_pos }}</td>
                            <td>{{ $location->negara }}</td>
                            <td>
                                <form action="{{ route('locations.destroy', $location->id) }}" method="post">
                                    @csrf
                                    @method('DELETE')

                                    <a href="{{ route('locations.show', $location->id) }}" class="btn btn-warning btn-sm">
                                        <i class="bi bi-eye"></i> Show
                                    </a>

                                    @can('edit-location')
                                        <a href="{{ route('locations.edit', $location->id) }}" class="btn btn-primary btn-sm">
                                            <i class="bi bi-pencil-square"></i> Edit
                                        </a>
                                    @endcan

                                    @can('delete-location')
                                        <button type="submit" class="btn btn-danger btn-sm"
                                            onclick="return confirm('Are you sure you want to delete this location?');">
                                            <i class="bi bi-trash"></i> Delete
                                        </button>
                                    @endcan
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="8" class="text-center">
                                <span class="text-danger">
                                    <strong>No locations found!</strong>
                                </span>
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>

            {{ $locations->links() }}
        </div>
    </div>
@endsection
