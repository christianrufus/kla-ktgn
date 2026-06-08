<x-main-layout>
    <!-- Hero Section -->
    <div class="relative bg-[#5B106B] pt-28 pb-32 lg:pb-48 overflow-hidden">
        <!-- Floating Decorations -->
        <div class="absolute top-20 left-[10%] w-10 h-10 text-yellow-400 animate-bounce">
            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 0l3 9h9l-7 5 3 9-8-6-8 6 3-9-7-5h9z"/></svg>
        </div>
        <div class="absolute top-40 right-[15%] w-8 h-8 text-yellow-300 animate-spin-slow">
            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 0l3 9h9l-7 5 3 9-8-6-8 6 3-9-7-5h9z"/></svg>
        </div>
        <div class="absolute bottom-40 left-[15%] w-6 h-6 text-pink-400 rotate-45">
            <svg viewBox="0 0 24 24" fill="currentColor"><rect width="24" height="24" rx="4"/></svg>
        </div>
        <!-- Playful curved line decoration -->
        <svg class="absolute top-20 right-[5%] w-32 h-32 text-orange-400 opacity-80" fill="none" stroke="currentColor" viewBox="0 0 100 100">
            <path d="M10 50 Q 30 10, 50 50 T 90 50" stroke-width="4" stroke-linecap="round"/>
        </svg>

        <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 z-10 pt-10 pb-8 flex flex-col items-center">
            
            <!-- Hero Slider & Dynamic Title Wrapper -->
            <div class="w-full w-full flex flex-col items-center" x-data="{ 
                        currentIndex: 0, 
                        slides: {{ Js::from($slides) }},
                        canSlide: true,
                        timer: null,
                        init() {
                            if(this.slides.length > 1) {
                                this.startTimer();
                            }
                        },
                        startTimer() {
                            this.stopTimer();

                            this.timer = setInterval(() => {
                                this.next();
                            }, 5000);
                        },
                        stopTimer() {
                            clearInterval(this.timer);
                            this.timer = null;
                        },
                        next() {
                            this.currentIndex = (this.currentIndex + 1) % this.slides.length;

                            this.stopTimer();
                            this.startTimer();
                        },

                        prev() {
                            this.currentIndex = (this.currentIndex - 1 + this.slides.length) % this.slides.length;

                            this.stopTimer();
                            this.startTimer();
                        },
                        goto(index) {
                            this.currentIndex = index;

                            this.stopTimer();
                            this.startTimer();
                        }
                    }" x-init="init()">
                
                <!-- Hero Slider in Blob Shape -->
                <div class="w-full max-w-3xl mx-auto relative group mb-8 h-[220px] sm:h-[280px] md:h-[320px] lg:h-[420px]" @mouseenter="stopTimer()" @mouseleave="if (canSlide) startTimer()">
                    <div class="w-full h-full relative overflow-hidden bg-white/5 border-[6px] lg:border-[12px] border-white shadow-2xl transition-all duration-700 ease-in-out hover:rounded-[3rem]"
                         style="border-radius: 40% 60% 70% 30% / 40% 50% 60% 50%;">
                        
                        @if(count($slides) > 0)
                            <!-- Slides -->
                            @foreach($slides as $slide)
                                <div class="absolute inset-0 w-full h-full transition-all duration-1000"
                                    x-show="currentIndex === {{ $loop->index }}"
                                    x-transition:enter="transition ease-in-out duration-1000"
                                    x-transition:enter-start="opacity-0 transform scale-105"
                                    x-transition:enter-end="opacity-100 transform scale-100"
                                    x-transition:leave="transition ease-in-out duration-1000"
                                    x-transition:leave-start="opacity-100 transform scale-100"
                                    x-transition:leave-end="opacity-0 transform scale-105">
                                    
                                    <!-- Blurred Background to fill empty space -->
                                    <div class="absolute inset-0">
                                        <img src="{{ $slide->path }}" alt=""
                                            class="w-full h-full object-cover filter blur-xl opacity-80 scale-110">
                                    </div>

                                    <!-- Actual Image -->
                                    <div class="absolute inset-0 flex items-center justify-center bg-black/10">
                                        <img src="{{ $slide->path }}" alt="{{ $slide->name }}"
                                            class="w-full h-full object-contain animate-kenburns relative z-10 drop-shadow-xl">
                                    </div>
                                </div>
                            @endforeach



                            <!-- Controls -->
                            @if(count($slides) > 1)
                                <div class="absolute bottom-6 left-0 right-0 flex justify-center space-x-3 z-20">
                                    <template x-for="(slide, index) in slides" :key="index">
                                        <button @click="goto(index)"
                                            :class="{'bg-[#00FF87] w-8 shadow-[0_0_10px_rgba(0,255,135,0.8)]': currentIndex === index, 'bg-white/60 w-3 hover:bg-white': currentIndex !== index}"
                                            class="h-3 rounded-full transition-all duration-500 shadow-md">
                                        </button>
                                    </template>
                                </div>
                            @endif
                            
                            <!-- Navigation Arrows (Inside the blob) -->
                            @if(count($slides) > 1)
                                <button @click.stop="prev()" class="absolute left-4 md:left-12 top-1/2 -translate-y-1/2 z-40 bg-white/80 hover:bg-white text-[#5B106B] p-2 md:p-4 rounded-full shadow-[0_5px_15px_rgba(0,0,0,0.3)] transition-all duration-300 transform hover:scale-110 focus:outline-none">
                                    <svg class="w-6 h-6 md:w-8 md:h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M15 19l-7-7 7-7"/></svg>
                                </button>
                                <button @click.stop="next()" class="absolute right-4 md:right-12 top-1/2 -translate-y-1/2 z-40 bg-white/80 hover:bg-white text-[#5B106B] p-2 md:p-4 rounded-full shadow-[0_5px_15px_rgba(0,0,0,0.3)] transition-all duration-300 transform hover:scale-110 focus:outline-none">
                                    <svg class="w-6 h-6 md:w-8 md:h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M9 5l7 7-7 7"/></svg>
                                </button>
                            @endif

                        @else
                            <!-- Empty State Slider -->
                            <div class="absolute inset-0 w-full h-full flex flex-col items-center justify-center bg-gradient-to-br from-[#FF9A9E] to-[#FECFEF]">
                                <div class="text-center p-8">
                                    <svg class="w-24 h-24 text-white/80 mx-auto mb-4 animate-bounce" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                    <h3 class="text-2xl font-black text-white mb-2 drop-shadow-md">Area Bermain Kosong!</h3>
                                    <p class="text-white/90 text-sm max-w-xs mx-auto font-medium">Tambah gambar slider di admin biar makin seru.</p>
                                </div>
                            </div>
                        @endif
                    </div> <!-- End of overflow-hidden blob -->
                </div>

                <!-- Main Headline Moved Below Slider (Dynamic Media Title) -->
                <div class="text-center mt-4 mb-10 z-20 px-4 animate-fade-in-up w-full">
                    <h1 class="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-bold text-white drop-shadow-[0_3px_3px_rgba(0,0,0,0.3)] tracking-wide leading-tight font-sans" 
                        x-text="slides.length > 0 ? slides[currentIndex].name : 'KLA Katingan'">
                    </h1>
                </div>

            </div>
        </div>

        <!-- Wave Separator -->
        <div class="absolute bottom-0 left-0 right-0 w-full overflow-hidden leading-none z-20 translate-y-[2px]">
            <svg class="relative block w-full h-[60px] lg:h-[120px]" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V120H0V95.8C52.16,105.32,105.47,112.5,158.7,112.5C216,112.5,270.83,86.5,321.39,56.44Z" class="fill-white"></path>
            </svg>
        </div>
    </div>

    <!-- Styles -->
    <style>
        @keyframes kenburns {
            0% {
                transform: scale(1.1);
            }

            100% {
                transform: scale(1);
            }
        }

        .animate-kenburns {
            animation: kenburns 7s ease-out;
            animation-fill-mode: both;
            transform-origin: center center;
        }

        .slide-up {
            animation: slide-up 1s ease-out forwards;
        }

        .slide-up-delayed {
            animation: slide-up 1s ease-out 0.3s forwards;
            opacity: 0;
        }

        @keyframes slide-up {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .klaster-slider {
            padding: 20px;
        }

        .klaster-slide {
            margin: 0 20px;
            transition: transform 0.3s ease;
            height: 100%;
        }

        .klaster-slide>a {
            display: block;
            height: 100%;
        }

        .klaster-slide:hover {
            transform: scale(1.05);
        }

        .klaster-slide img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .klaster-title {
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
            color: #14213D;
        }

        .klaster-description {
            text-align: center;
            color: #666;
            font-size: 0.9rem;
            line-height: 1.2;
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        @keyframes blob {
            0% { transform: translate(0px, 0px) scale(1); }
            33% { transform: translate(30px, -50px) scale(1.1); }
            66% { transform: translate(-20px, 20px) scale(0.9); }
            100% { transform: translate(0px, 0px) scale(1); }
        }
        .animate-blob {
            animation: blob 7s infinite;
        }
        .animation-delay-2000 {
            animation-delay: 2s;
        }
        .animation-delay-4000 {
            animation-delay: 4s;
        }
    </style>

    <!-- Section 1: Klaster -->
    <section id="klaster-section" class="relative py-20 bg-white">
        <!-- Floating Pill Badges (Decorative) -->
        <div class="absolute top-10 right-[10%] hidden lg:block transform rotate-6">
            <span class="px-6 py-2 bg-[#00FF87] text-[#5B106B] font-extrabold rounded-full text-sm shadow-md">Interaktif</span>
        </div>
        <div class="absolute top-20 left-[15%] hidden lg:block transform -rotate-12">
            <span class="px-6 py-2 bg-[#FF9A9E] text-white font-extrabold rounded-full text-sm shadow-md">Ramah Anak</span>
        </div>
        <div class="absolute top-32 right-[20%] hidden lg:block transform -rotate-6">
            <span class="px-6 py-2 bg-[#5B106B] text-white font-extrabold rounded-full text-sm shadow-md">Aman & Nyaman</span>
        </div>

        <div class="absolute left-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/1kids.svg') }}" alt="Kids Decoration Left" class="w-full h-full object-contain">
        </div>
        <div class="absolute right-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/2kids.svg') }}" alt="Kids Decoration Right" class="w-full h-full object-contain">
        </div>

        <div class="relative z-30">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="mt-8 relative">

                    <div class="p-6 relative z-10">
                        <h2 class="text-4xl lg:text-5xl font-black mb-12 text-center text-gray-900 tracking-tight" style="font-family: 'Fredoka One', 'Comic Sans MS', 'Chalkboard SE', 'Marker Felt', sans-serif;">
                            KLASTER PEMENUHAN <br class="hidden lg:block"> HAK ANAK
                        </h2>

                        <div class="klaster-slider">
                            <div class="klaster-slide">
                                <a href="{{ route('pemenuhan-hak-anak.klaster1') }}">
                                    <div class="relative overflow-hidden shadow-xl hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 h-full bg-white rounded-[2rem] border-4 border-dashed border-[#FF9A9E] group">
                                        <div class="aspect-w-16 aspect-h-9 relative">
                                            <div class="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors z-10 rounded-t-[1.75rem]"></div>
                                            <img src="{{ asset('images/klaster-1.jpg') }}" alt="Klaster 1"
                                                class="w-full h-[200px] object-cover rounded-t-[1.75rem]">
                                        </div>
                                        <div class="p-6 text-center">
                                            <span class="inline-block px-4 py-1 bg-[#FF9A9E] text-white text-xs font-bold rounded-full mb-3 uppercase tracking-wider">Klaster 1</span>
                                            <div class="font-extrabold text-gray-800 text-lg leading-tight h-12 flex items-center justify-center">Hak Sipil dan Kebebasan</div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="klaster-slide">
                                <a href="{{ route('pemenuhan-hak-anak.klaster2') }}">
                                    <div class="relative overflow-hidden shadow-xl hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 h-full bg-white rounded-[2rem] border-4 border-dashed border-yellow-400 group">
                                        <div class="aspect-w-16 aspect-h-9 relative">
                                            <div class="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors z-10 rounded-t-[1.75rem]"></div>
                                            <img src="{{ asset('images/klaster-2.jpg') }}" alt="Klaster 2"
                                                class="w-full h-[200px] object-cover rounded-t-[1.75rem]">
                                        </div>
                                        <div class="p-6 text-center">
                                            <span class="inline-block px-4 py-1 bg-yellow-400 text-yellow-900 text-xs font-bold rounded-full mb-3 uppercase tracking-wider">Klaster 2</span>
                                            <div class="font-extrabold text-gray-800 text-lg leading-tight h-12 flex items-center justify-center">Lingkungan Keluarga & Pengasuhan</div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="klaster-slide">
                                <a href="{{ route('pemenuhan-hak-anak.klaster3') }}">
                                    <div class="relative overflow-hidden shadow-xl hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 h-full bg-white rounded-[2rem] border-4 border-dashed border-[#00FF87] group">
                                        <div class="aspect-w-16 aspect-h-9 relative">
                                            <div class="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors z-10 rounded-t-[1.75rem]"></div>
                                            <img src="{{ asset('images/klaster-3.jpg') }}" alt="Klaster 3"
                                                class="w-full h-[200px] object-cover rounded-t-[1.75rem]">
                                        </div>
                                        <div class="p-6 text-center">
                                            <span class="inline-block px-4 py-1 bg-[#00FF87] text-[#5B106B] text-xs font-bold rounded-full mb-3 uppercase tracking-wider">Klaster 3</span>
                                            <div class="font-extrabold text-gray-800 text-lg leading-tight h-12 flex items-center justify-center">Kesehatan Dasar & Kesejahteraan</div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="klaster-slide">
                                <a href="{{ route('pemenuhan-hak-anak.klaster4') }}">
                                    <div class="relative overflow-hidden shadow-xl hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 h-full bg-white rounded-[2rem] border-4 border-dashed border-blue-400 group">
                                        <div class="aspect-w-16 aspect-h-9 relative">
                                            <div class="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors z-10 rounded-t-[1.75rem]"></div>
                                            <img src="{{ asset('images/klaster-4.jpg') }}" alt="Klaster 4"
                                                class="w-full h-[200px] object-cover rounded-t-[1.75rem]">
                                        </div>
                                        <div class="p-6 text-center">
                                            <span class="inline-block px-4 py-1 bg-blue-400 text-white text-xs font-bold rounded-full mb-3 uppercase tracking-wider">Klaster 4</span>
                                            <div class="font-extrabold text-gray-800 text-lg leading-tight h-12 flex items-center justify-center">Pendidikan & Waktu Luang</div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="klaster-slide">
                                <a href="{{ route('perlindungan-khusus-anak.klaster5') }}">
                                    <div class="relative overflow-hidden shadow-xl hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 h-full bg-white rounded-[2rem] border-4 border-dashed border-[#5B106B] group">
                                        <div class="aspect-w-16 aspect-h-9 relative">
                                            <div class="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors z-10 rounded-t-[1.75rem]"></div>
                                            <img src="{{ asset('images/klaster-5.jpg') }}" alt="Klaster 5"
                                                class="w-full h-[200px] object-cover rounded-t-[1.75rem]">
                                        </div>
                                        <div class="p-6 text-center">
                                            <span class="inline-block px-4 py-1 bg-[#5B106B] text-white text-xs font-bold rounded-full mb-3 uppercase tracking-wider">Klaster 5</span>
                                            <div class="font-extrabold text-gray-800 text-lg leading-tight h-12 flex items-center justify-center">Perlindungan Khusus Anak</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
            </div>
        </div>


    </section>

    <!-- Section 2: Berita & Agenda -->
    <section id="berita-agenda-section" class="relative py-20 bg-[#FECFEF]">
        <!-- Playful Decorations -->
        <div class="absolute top-10 left-[5%] hidden lg:block transform -rotate-12">
            <svg class="w-16 h-16 text-white opacity-80" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2L15.09 8.26L22 9.27L17 14.14L18.18 21.02L12 17.77L5.82 21.02L7 14.14L2 9.27L8.91 8.26L12 2Z"/></svg>
        </div>
        <div class="absolute bottom-20 right-[5%] hidden lg:block transform rotate-12">
            <svg class="w-20 h-20 text-white opacity-60" fill="currentColor" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/></svg>
        </div>

        <div class="absolute left-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/3kids.svg') }}" alt="Kids Decoration Left" class="w-full h-full object-contain">
        </div>
        <div class="absolute right-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/4kids.svg') }}" alt="Kids Decoration Right" class="w-full h-full object-contain">
        </div>

        <div class="relative z-10">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex flex-col lg:flex-row lg:justify-between gap-8 mt-8">
                    <!-- Berita Section -->
                    <div class="w-full lg:w-2/3">
                        <div class="bg-white rounded-[2.5rem] border-[6px] border-dashed border-[#FF9A9E] shadow-[0_10px_30px_rgba(255,154,158,0.4)] p-6 md:p-10 relative">
                            <!-- Badge Top -->
                            <div class="absolute top-0 right-10 transform -translate-y-1/2">
                                <span class="bg-[#00FF87] text-[#5B106B] px-6 py-2 rounded-full font-black text-sm uppercase tracking-widest shadow-md">Update Terbaru!</span>
                            </div>

                            <div class="flex justify-between items-center mb-8 mt-2">
                                <h2 class="text-3xl md:text-4xl font-black text-[#5B106B]" style="font-family: 'Fredoka One', 'Comic Sans MS', sans-serif;">
                                    BERITA TERKINI
                                </h2>

                                <a href="{{ route('berita') }}" class="text-[#FF9A9E] hover:text-[#5B106B] font-extrabold text-sm md:text-base transition-colors duration-200 uppercase tracking-wide flex items-center gap-1">
                                    Lihat Semua 
                                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M14 5l7 7m0 0l-7 7m7-7H3"/></svg>
                                </a>
                            </div>
                            
                            <div class="flex flex-col space-y-6">
                                @forelse($latestNews as $item)
                                    <div class="group flex flex-col md:flex-row gap-6 bg-gray-50 rounded-[1.5rem] p-4 hover:bg-[#FFF0F5] border-2 border-transparent hover:border-[#FF9A9E] transition-all duration-300">
                                        <div class="w-full md:w-1/3 relative overflow-hidden rounded-[1rem]">
                                            @if($item->image)
                                                <div class="relative overflow-hidden rounded-[1rem] aspect-w-4 aspect-h-3">
                                                    <img src="{{ $item->image }}" alt="{{ $item->title }}" class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                                                </div>
                                            @else
                                                <div class="w-full h-full min-h-[120px] bg-gradient-to-br from-pink-200 to-purple-200 rounded-[1rem] flex items-center justify-center">
                                                    <svg class="w-10 h-10 text-white opacity-50" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                                                </div>
                                            @endif
                                        </div>
                                        <div class="w-full md:w-2/3 flex flex-col justify-center">
                                            <p class="text-[#FF9A9E] font-bold text-sm mb-2 uppercase tracking-wider">
                                                {{ \Carbon\Carbon::parse($item->created_at)->format('d M Y') }}
                                            </p>
                                            <h3 class="text-xl font-black text-gray-800 group-hover:text-[#5B106B] transition-colors leading-tight mb-3">
                                                <a href="{{ route('berita.detail', ['title' => Str::slug($item->title)]) }}">
                                                    {{ $item->title }}
                                                </a>
                                            </h3>
                                            <p class="text-gray-600 font-medium line-clamp-2 text-sm md:text-base">
                                                {{ Str::limit(strip_tags($item->content), 120) }}
                                            </p>
                                        </div>
                                    </div>
                                @empty
                                    <div class="text-center py-12 bg-white rounded-xl border-4 border-dashed border-gray-200">
                                        <h3 class="text-2xl font-black text-gray-400 mb-2">Yah, Belum Ada Berita!</h3>
                                        <p class="text-gray-400 font-medium">Berita terbaru akan segera hadir di sini.</p>
                                    </div>
                                @endforelse
                            </div>
                        </div>
                    </div>

                    <!-- Agenda Section -->
                    <div class="w-full lg:w-1/3">
                        <div class="bg-[#00FF87] rounded-[2.5rem] border-[6px] border-dashed border-white shadow-[0_10px_30px_rgba(0,255,135,0.4)] p-6 md:p-10 relative h-full">
                            <h2 class="text-3xl md:text-4xl font-black text-[#5B106B] mb-8" style="font-family: 'Fredoka One', 'Comic Sans MS', sans-serif;">
                                AGENDA
                            </h2>
                            <div class="flex flex-col space-y-4">
                                @forelse($upcomingAgendas as $item)
                                    <div class="flex items-center gap-4 bg-white rounded-[1.5rem] p-4 shadow-sm hover:shadow-md transition-shadow">
                                        <div class="flex-shrink-0 w-16 h-16 bg-[#5B106B] rounded-2xl flex flex-col items-center justify-center text-white transform -rotate-3">
                                            <span class="text-2xl font-black leading-none">{{ \Carbon\Carbon::parse($item->tanggal)->format('d') }}</span>
                                            <span class="text-xs font-bold uppercase tracking-wider">{{ \Carbon\Carbon::parse($item->tanggal)->isoFormat('MMM') }}</span>
                                        </div>
                                        <div class="flex-1">
                                            <h3 class="font-black text-gray-800 leading-tight mb-1">{{ $item->title }}</h3>
                                            <p class="text-xs text-[#5B106B] font-bold">
                                                {{ \Carbon\Carbon::parse($item->tanggal)->isoFormat('dddd, D MMMM Y') }}
                                            </p>
                                        </div>
                                    </div>
                                @empty
                                    <div class="text-center py-10 bg-white/50 rounded-2xl">
                                        <h3 class="text-xl font-black text-[#5B106B] mb-1">Jadwal Kosong</h3>
                                        <p class="text-[#5B106B]/80 font-medium text-sm">Belum ada agenda terdekat.</p>
                                    </div>
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Wave Separator to White -->
        <div class="absolute bottom-0 left-0 right-0 w-full overflow-hidden leading-none z-20 translate-y-[1px]">
            <svg class="relative block w-full h-[40px] lg:h-[80px]" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path fill="#ffffff" d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V120H0V95.8C52.16,105.32,105.47,112.5,158.7,112.5C216,112.5,270.83,86.5,321.39,56.44Z"></path>
            </svg>
        </div>
    </section>

    <!-- Section 3: Galeri, Video & Dokumen -->
    <section id="galeri-video-dokumen-section" class="relative py-20 bg-white">
        <!-- Playful Decorations -->
        <div class="absolute top-10 right-10 hidden lg:block animate-bounce">
            <svg class="w-12 h-12 text-[#FF9A9E]" fill="currentColor" viewBox="0 0 24 24"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg>
        </div>

        <div class="absolute left-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/5kids.svg') }}" alt="Kids Decoration Left" class="w-full h-full object-contain">
        </div>
        <div class="absolute right-0 bottom-0 w-40 h-56 lg:w-64 lg:h-80 z-0 opacity-40 lg:opacity-100 pointer-events-none">
            <img src="{{ asset('images/6kids.svg') }}" alt="Kids Decoration Right" class="w-full h-full object-contain">
        </div>

        <div class="relative z-10">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                
                <div class="text-center mb-12">
                    <h2 class="text-4xl md:text-5xl font-black text-[#5B106B]" style="font-family: 'Fredoka One', 'Comic Sans MS', sans-serif;">
                        GALERI & INFO KITA
                    </h2>
                    <p class="text-gray-500 font-medium mt-3 text-lg">Dokumentasi dan informasi terbaru untuk Sobat Anak!</p>
                </div>

                <div class="py-8 bg-[#FFF0F5] rounded-[3rem] border-8 border-dashed border-white shadow-[0_15px_40px_rgba(255,154,158,0.3)]">
                    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                        <div class="grid grid-cols-1 xl:grid-cols-3 gap-10">
                            <!-- Wrapped in playful cards -->
                            <div class="bg-white rounded-[2rem] p-6 shadow-md border-4 border-dashed border-[#00FF87] hover:-translate-y-2 transition-transform duration-300">
                                <x-sections.gallery :galleries="$galleries" />
                            </div>

                            <div class="bg-white rounded-[2rem] p-6 shadow-md border-4 border-dashed border-[#FF9A9E] hover:-translate-y-2 transition-transform duration-300">
                                <x-sections.video :videoSetting="$videoSetting" />
                            </div>

                            <div class="bg-white rounded-[2rem] p-6 shadow-md border-4 border-dashed border-[#5B106B] hover:-translate-y-2 transition-transform duration-300">
                                <x-sections.document :documents="$documents" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-main-layout>

<script>
    $(document).ready(function () {
        var $slider = $('.klaster-slider');

        $slider.slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            arrows: true,
            dots: true,
            pauseOnHover: false,
            infinite: true,
            draggable: true,
            touchThreshold: 10,
            swipe: true,
            swipeToSlide: true,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2
                }
            }, {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1
                }
            }]
        });

        var autoplayEnabled = true;

        $slider.on('beforeChange', function () {
            autoplayEnabled = true;
            restartAutoplay();
        });

        $slider.on('swipe', function () {
            autoplayEnabled = true;
            restartAutoplay();
        });

        $slider.on('edge', function () {
            autoplayEnabled = true;
            restartAutoplay();
        });

        $slider.on('mousedown touchstart', function () {
            autoplayEnabled = true;
        });

        function restartAutoplay() {
            if (autoplayEnabled) {
                $slider.slick('slickPlay');
            }
        }

        setInterval(function () {
            if (autoplayEnabled) {
                restartAutoplay();
            }
        }, 3000);

        $('.slick-next, .slick-prev').on('click', function () {
            autoplayEnabled = true;
            restartAutoplay();
        });

        $('.slick-dots button').on('click', function () {
            autoplayEnabled = true;
            restartAutoplay();
        });
    });
</script>