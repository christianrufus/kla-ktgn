<nav x-data="{ mobileOpen: false }"
    class="fixed top-0 left-0 right-0 z-50 bg-[#5B106B]/95 backdrop-blur-md border-b border-white/10 transition-all duration-200">
    <div class="max-w-7xl mx-auto px-3 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-20">
            
            <div class="flex items-center justify-between w-full lg:justify-start"> 
                <div class="flex items-center shrink-0">
                    <a href="/" class="flex items-center space-x-3">
                        <img src="{{ asset('images/logo_katingan.png') }}" alt="Logo Katingan" class="h-10 w-auto">
                        <div class="hidden sm:block">
                            <div class="text-lg font-extrabold text-white tracking-wide">
                                KLA Katingan
                            </div>
                            <div class="text-xs text-[#00E5FF] font-semibold uppercase tracking-widest">Website Resmi</div>
                        </div>
                    </a>
                    <div class="ml-4">
                        <img src="{{ asset('images/logo_kla.png') }}" alt="Logo KLA" class="h-10 w-10 object-contain">
                    </div>
                </div>

                <div class="hidden lg:flex items-center gap-6 lg:ml-auto">
                    <a href="/"
                        class="group relative px-3 py-2 text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                        <span class="relative z-10">{{ __('Beranda') }}</span>
                    </a>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                            <span class="relative z-10">Profil</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-2xl bg-white shadow-xl ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: 10px;">
                            <div class="py-2">
                                <a href="{{ route('profil.visi-misi') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Visi dan Misi</a>
                                <a href="{{ route('profil.program') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Program Kerja</a>
                            </div>
                        </div>
                    </div>

                    <a href="{{ route('galeri') }}"
                        class="group relative px-3 py-2 text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                        <span class="relative z-10">Galeri</span>
                    </a>

                    <a href="{{ route('dokumen') }}"
                        class="group relative px-3 py-2 text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                        <span class="relative z-10">Dokumen</span>
                    </a>

                    <a href="{{ route('data-dukung') }}"
                        class="group relative text-center px-3 py-2 text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                        <span class="relative z-10">Data Dukung</span>
                    </a>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                            <span class="relative z-10">Pemenuhan Hak Anak</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-2xl bg-white shadow-xl ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: 10px;">
                            <div class="py-2">
                                <a href="{{ route('pemenuhan-hak-anak.klaster1') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Klaster 1</a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster2') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Klaster 2</a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster3') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Klaster 3</a>
                                <a href="{{ route('pemenuhan-hak-anak.klaster4') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Klaster 4</a>
                            </div>
                        </div>
                    </div>

                    <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">
                        <button class="group relative px-3 py-2 inline-flex items-center text-sm font-bold text-white/90 hover:text-[#00FF87] transition-all duration-200">
                            <span class="relative z-10">Perlindungan Anak</span>
                            <svg class="ml-1 w-3 h-3 transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>
                        <div x-show="open" x-transition:enter="transition ease-out duration-200" x-transition:enter-start="opacity-0 transform -translate-y-2" x-transition:enter-end="opacity-100 transform translate-y-0" class="absolute z-50 w-40 rounded-2xl bg-white shadow-xl ring-1 ring-black ring-opacity-5 focus:outline-none overflow-hidden" style="margin-top: 10px;">
                            <div class="py-2">
                                <a href="{{ route('perlindungan-khusus-anak.klaster5') }}" class="block px-3 py-2 text-sm font-bold text-[#5B106B] hover:bg-[#00FF87]/20 transition-colors duration-200">Klaster 5</a>
                            </div>
                        </div>
                    </div>

                    <a href="/kontak"
                        class="ml-4 inline-flex text-center items-center justify-center px-6 py-2.5 text-sm font-extrabold text-[#5B106B] bg-[#00FF87] rounded-full hover:bg-[#00E5FF] hover:scale-105 hover:shadow-[0_0_15px_rgba(0,255,135,0.5)] transition-all duration-300">
                        Kontak Kami
                    </a>
                </div>
            </div> 

            <div class="flex items-center lg:hidden">
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
         class="lg:hidden absolute w-full left-0 bg-white shadow-lg border-t border-gray-100 z-40 max-h-[calc(100vh-5rem)] overflow-y-auto">
        
        <div class="px-3 pt-2 pb-6 space-y-1 bg-white">
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
