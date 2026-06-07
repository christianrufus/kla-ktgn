<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | KLA Katingan</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <style>
        body { font-family: 'Quicksand', sans-serif; }
        
        @keyframes float {
            0% { transform: translateY(0px) scale(1); }
            33% { transform: translateY(-20px) scale(1.05); }
            66% { transform: translateY(10px) scale(0.95); }
            100% { transform: translateY(0px) scale(1); }
        }
        
        .animate-float-1 { animation: float 6s ease-in-out infinite; }
        .animate-float-2 { animation: float 8s ease-in-out infinite reverse; }
        .animate-float-3 { animation: float 7s ease-in-out infinite 1s; }

        @keyframes popIn {
            0% { opacity: 0; transform: scale(0.9); }
            100% { opacity: 1; transform: scale(1); }
        }
        .animate-pop-in { animation: popIn 0.6s cubic-bezier(0.16, 1, 0.3, 1) forwards; }
    </style>
</head>

<body class="relative min-h-screen flex items-center justify-center bg-white overflow-hidden antialiased">
    
    <div class="fixed inset-0 z-0 bg-cover bg-center bg-no-repeat" style="background-image: url('{{ asset('images/background.png') }}');">
        <div class="absolute inset-0 bg-white/85 backdrop-blur-sm"></div>
    </div>

    <div class="absolute top-10 left-10 w-48 h-48 bg-pink-300 rounded-full mix-blend-multiply filter blur-xl opacity-60 animate-float-1 z-1"></div>
    <div class="absolute top-20 right-20 w-64 h-64 bg-yellow-300 rounded-full mix-blend-multiply filter blur-xl opacity-60 animate-float-2 z-1"></div>
    <div class="absolute -bottom-10 left-1/3 w-72 h-72 bg-sky-300 rounded-full mix-blend-multiply filter blur-xl opacity-60 animate-float-3 z-1"></div>

    <div class="relative z-10 w-full max-w-md bg-white/95 backdrop-blur-xl border-4 border-white shadow-[0_10px_40px_rgb(0,0,0,0.1)] rounded-[2.5rem] p-8 mx-4 animate-pop-in">
        
        <div class="text-center mb-6 relative">
            <div class="absolute top-0 right-8 text-yellow-400 animate-float-2 text-xl">✨</div>
            <div class="absolute bottom-4 left-6 text-sky-400 animate-float-1 text-xl">⭐</div>

            <div class="inline-block p-4 rounded-[2rem] bg-white shadow-md mb-4 hover:rotate-3 transition-transform duration-300 cursor-pointer border border-slate-50">
                <img src="{{ asset('images/logo_kla.png') }}" alt="Logo KLA" class="h-20 w-auto">
            </div>
            <h2 class="text-3xl font-extrabold text-slate-800 tracking-tight">Halo, Sobat!</h2>
            <p class="text-sky-500 font-bold mt-1">Kabupaten Layak Anak Katingan</p>
        </div>

        @if ($errors->any() || session('status'))
            <div class="mb-5 p-4 rounded-2xl bg-pink-50 border-2 border-pink-200 animate-pop-in">
                <div class="flex items-start">
                    <span class="text-pink-500 text-xl mr-3 mt-0.5">⚠️</span>
                    <div>
                        <h4 class="text-sm font-extrabold text-pink-600">Ups, ada yang salah!</h4>
                        <p class="text-xs font-bold text-pink-500 mt-1">
                            {{ session('status') ?? 'Pastikan Alamat Email dan Kata Sandi yang kamu masukkan sudah benar ya.' }}
                        </p>
                    </div>
                </div>
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}" class="space-y-5">
            @csrf

            <div>
                <label for="email" class="block text-sm font-extrabold text-slate-700 mb-2 ml-2 tracking-wide">Alamat Email</label>
                <input 
                    id="email" 
                    type="email" 
                    name="email" 
                    value="{{ old('email') }}" 
                    required 
                    autofocus 
                    autocomplete="username"
                    class="block w-full px-5 py-4 rounded-full bg-slate-50 border-2 border-sky-200 text-slate-800 font-bold placeholder-slate-400 focus:bg-white focus:border-sky-400 focus:ring-4 focus:ring-sky-100 transition-all duration-300 shadow-sm {{ $errors->has('email') ? 'border-pink-300 focus:border-pink-400 focus:ring-pink-100' : '' }}" 
                    placeholder="admin@katingan.go.id" 
                />
            </div>

            <div>
                <label for="password" class="block text-sm font-extrabold text-slate-700 mb-2 ml-2 tracking-wide">Kata Sandi</label>
                <input 
                    id="password" 
                    type="password" 
                    name="password" 
                    required 
                    autocomplete="current-password"
                    class="block w-full px-5 py-4 rounded-full bg-slate-50 border-2 border-sky-200 text-slate-800 font-bold placeholder-slate-400 focus:bg-white focus:border-sky-400 focus:ring-4 focus:ring-sky-100 transition-all duration-300 shadow-sm {{ $errors->has('password') ? 'border-pink-300 focus:border-pink-400 focus:ring-pink-100' : '' }}" 
                    placeholder="••••••••" 
                />
            </div>

            <div class="flex items-center px-2 pt-1">
                <label for="remember_me" class="inline-flex items-center cursor-pointer group">
                    <input id="remember_me" type="checkbox" name="remember" class="rounded-md border-2 border-sky-300 text-sky-500 focus:ring-sky-400 w-5 h-5 transition-all bg-slate-50">
                    <span class="ms-3 text-sm font-bold text-slate-600 group-hover:text-sky-600 transition-colors">Ingat saya selalu</span>
                </label>
            </div>

            <button type="submit" class="w-full relative overflow-hidden bg-gradient-to-r from-sky-400 to-blue-500 text-white font-extrabold py-4 px-4 rounded-full shadow-[0_8px_20px_rgba(56,189,248,0.4)] transition-all duration-300 hover:scale-[1.02] hover:shadow-[0_12px_25px_rgba(56,189,248,0.5)] active:scale-95 mt-4">
                <span class="relative z-10 flex items-center justify-center text-lg tracking-wide">
                    Ayo Masuk! 🚀
                </span>
            </button>
        </form>
    </div>

</body>
</html>
