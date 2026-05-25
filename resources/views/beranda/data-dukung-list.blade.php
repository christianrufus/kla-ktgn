<div class="overflow-x-auto">
    @if($dataDukung->count() > 0)

            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-100">
                    <tr>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">No</th>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">Perangkat Daerah</th>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">Klaster</th>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">Indikator</th>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">Deskripsi</th>
                        <th class="px-4 py-3 text-left text-sm font-semibold text-gray-700">File</th>
                    </tr>
                </thead>

                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach($dataDukung as $index => $item)

                        <tr class="hover:bg-gray-50">
                            <td class="px-4 py-4 text-sm text-gray-700">
                                {{ $dataDukung->firstItem() + $index }}
                            </td>

                            <td class="px-4 py-4">
                                <div class="text-sm font-medium text-gray-900">
                                    {{ $item->opd->name ?? '-' }}
                                </div>
                            </td>

                            <td class="px-4 py-4">
                                <div class="text-sm text-gray-700">
                                    {{ $item->indikator->klaster->name ?? '-' }}
                                </div>
                            </td>

                            <td class="px-4 py-4">
                                <div class="text-sm text-gray-700">
                                    {{ $item->indikator->name ?? '-' }}
                                </div>
                            </td>

                            <td class="px-4 py-4">
                                <div class="text-sm text-gray-700 max-w-xs break-words">
                                    {{ $item->description ?? '-' }}
                                </div>
                            </td>

                            <td class="px-4 py-4">
                                <div class="space-y-2">
                                    @foreach($item->files as $file)

                                        <div class="border rounded-lg p-3 bg-gray-50">
                                            <div class="flex flex-col gap-2">

                                                <div>
                                                    <p class="text-sm font-medium text-gray-800 break-all">
                                                        {{ $file->original_name }}
                                                    </p>

                                                    <p class="text-xs text-gray-500">
                                                        {{ strtoupper(pathinfo($file->original_name, PATHINFO_EXTENSION)) }}
                                                        •
                                                        {{ number_format($file->size / 1024 / 1024, 2) }} MB
                                                    </p>
                                                </div>

                                                <div class="flex gap-2">
                                                    <a href="{{ asset('storage/' . $file->file) }}" download
                                                        class="px-3 py-1 bg-blue-600 hover:bg-blue-700 text-white rounded text-sm">
                                                        Unduh
                                                    </a>

                                                </div>

                                            </div>
                                        </div>

                                    @endforeach
                                </div>
                            </td>

                        </tr>

                    @endforeach

                </tbody>

            </table>
            <div class="flex justify-between items-center mt-6">
                <div class="text-sm text-gray-600">
                    Showing {{ $dataDukung->firstItem() }}
                    to {{ $dataDukung->lastItem() }}
                    of {{ $dataDukung->total() }} entries
                </div>

                <div>
                    {{ $dataDukung->links() }}
                </div>
            </div>
        </div>

        <div class="mt-6">
            {{ $dataDukung->links() }}
        </div>

    @else

    <div class="text-center py-8 text-gray-500">
        Tidak ada data dukung tersedia
    </div>

@endif