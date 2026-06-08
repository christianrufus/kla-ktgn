<nav x-data="{ mobileOpen: false }"
    class="fixed top-0 left-0 right-0 z-50 bg-white/95 backdrop-blur-sm border-b border-gray-100 transition-all duration-200">
    <div class="w-full px-4 sm:px-6">
        <div class="flex justify-between items-center h-14">
            
            <div class="flex items-center justify-between w-full xl:justify-start"> 
                <div class="flex items-center shrink-0">
                    <a href="/" class="flex items-center space-x-3">
                        <img src="{{ asset('images/logo_katingan.png') }}" alt="Logo Katingan" class="h-8 w-auto">
                        <div>
                            <div class="text-sm font-semibold bg-gradient-to-r from-blue-600 to-indigo-600 bg-clip-text text-transparent">
                                Website Resmi KLA
                            </div>
                            <div class="text-xs text-gray-600">Kabupaten Katingan</div>
                        </div>
                    </a>
                    <div class="ml-2">
                        <img src="{{ asset('images/logo_kla.png') }}" alt="Logo KLA" class="h-14 w-14 object-contain">
                    </div>
                </div>

                <div class="hidden xl:flex items-center space-x-2 xl:ml-10">
                    <a href="/"
                        class="group relative px-3 py-2 text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                        <span class="relative z-10">{{ __('Beranda') }}</span>
                        <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                    </a>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                            <span class="relative z-10">Profil</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                            </svg>
                            <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-xl bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: -2px;">
                            <div class="py-1">
                                <a href="{{ route('profil.visi-misi') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Visi dan Misi</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                                <a href="{{ route('profil.program') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Program Kerja</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <a href="{{ route('galeri') }}"
                        class="group relative px-3 py-2 text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                        <span class="relative z-10">Galeri</span>
                        <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                    </a>

                    <a href="{{ route('dokumen') }}"
                        class="group relative px-3 py-2 text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                        <span class="relative z-10">Dokumen</span>
                        <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                    </a>

                    <a href="{{ route('data-dukung') }}"
                        class="group relative px-3 py-2 text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                        <span class="relative z-10">Data Dukung</span>
                        <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                    </a>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                            <span class="relative z-10">Pemenuhan Hak Anak</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                            </svg>
                            <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-xl bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: -2px;">
                            <div class="py-1">
                                <a href="{{ route('pemenuhan-hak-anak.klaster1') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Klaster 1</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster2') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Klaster 2</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster3') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Klaster 3</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster4') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Klaster 4</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                            <span class="relative z-10">Perlindungan Khusus Anak</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                            </svg>
                            <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-xl bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: -2px;">
                            <div class="py-1">
                                <a href="{{ route('perlindungan-khusus-anak.klaster5') }}" class="group relative block px-3 py-1.5 text-xs text-gray-800 hover:text-blue-600 transition-colors duration-200">
                                    <span class="relative z-10">Klaster 5</span>
                                    <div class="absolute inset-0 h-full w-full bg-blue-100/80 origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <a href="/kontak"
                        class="group relative px-3 py-2 text-xs font-medium text-gray-800 hover:text-blue-600 transition-all duration-200">
                        <span class="relative z-10">Kontak Kami</span>
                        <div class="absolute inset-0 h-full w-full bg-blue-100/80 rounded-xl origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300 ease-out"></div>
                    </a>
                </div>
            </div> 

            <div class="flex items-center xl:hidden">
                <button @click="mobileOpen = ! mobileOpen"
                    class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': mobileOpen, 'inline-flex': ! mobileOpen }" class="inline-flex"
                            stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! mobileOpen, 'inline-flex': mobileOpen }" class="hidden" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>

        </div>
    </div>

    <div x-show="mobileOpen" 
         x-transition:enter="transition ease-out duration-200"
         x-transition:enter-start="opacity-0 transform -translate-y-4"
         x-transition:enter-end="opacity-100 transform translate-y-0"
         x-transition:leave="transition ease-in duration-150"
         x-transition:leave-start="opacity-100 transform translate-y-0"
         x-transition:leave-end="opacity-0 transform -translate-y-4"
         class="xl:hidden absolute w-full left-0 bg-white shadow-lg border-t border-gray-100 z-40 max-h-[calc(100vh-3.5rem)] overflow-y-auto">
        
        <div class="px-4 pt-2 pb-6 space-y-1 bg-white">
            <a href="/" class="block px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                Beranda
            </a>

            <div x-data="{ openSub: false }" class="space-y-1">
                <button @click="openSub = !openSub" class="w-full flex justify-between items-center px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                    <span>Profil</span>
                    <svg class="w-4 h-4 transition-transform duration-200" :class="{'rotate-180': openSub}" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <div x-show="openSub" class="pl-4 space-y-1 bg-gray-50/50 rounded-xl py-1">
                    <a href="{{ route('profil.visi-misi') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Visi dan Misi</a>
                    <a href="{{ route('profil.program') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Program Kerja</a>
                </div>
            </div>

            <a href="{{ route('galeri') }}" class="block px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                Galeri
            </a>

            <a href="{{ route('dokumen') }}" class="block px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                Dokumen
            </a>

            <a href="{{ route('data-dukung') }}" class="block px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                Data Dukung
            </a>

            <div x-data="{ openSub: false }" class="space-y-1">
                <button @click="openSub = !openSub" class="w-full flex justify-between items-center px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                    <span>Pemenuhan Hak Anak</span>
                    <svg class="w-4 h-4 transition-transform duration-200" :class="{'rotate-180': openSub}" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <div x-show="openSub" class="pl-4 space-y-1 bg-gray-50/50 rounded-xl py-1">
                    <a href="{{ route('pemenuhan-hak-anak.klaster1') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Klaster 1</a>
                    <a href="{{ route('pemenuhan-hak-anak.klaster2') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Klaster 2</a>
                    <a href="{{ route('pemenuhan-hak-anak.klaster3') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Klaster 3</a>
                    <a href="{{ route('pemenuhan-hak-anak.klaster4') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Klaster 4</a>
                </div>
            </div>

            <div x-data="{ openSub: false }" class="space-y-1">
                <button @click="openSub = !openSub" class="w-full flex justify-between items-center px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                    <span>Perlindungan Khusus Anak</span>
                    <svg class="w-4 h-4 transition-transform duration-200" :class="{'rotate-180': openSub}" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <div x-show="openSub" class="pl-4 space-y-1 bg-gray-50/50 rounded-xl py-1">
                    <a href="{{ route('perlindungan-khusus-anak.klaster5') }}" class="block px-3 py-1.5 text-xs font-medium text-gray-600 hover:text-blue-600">Klaster 5</a>
                </div>
            </div>

            <a href="/kontak" class="block px-3 py-2 rounded-xl text-sm font-medium text-gray-800 hover:text-blue-600 hover:bg-blue-50 transition-colors">
                Kontak Kami
            </a>
        </div>
    </div>
</nav>
