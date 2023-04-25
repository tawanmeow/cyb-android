; ModuleID = 'obj\Release\110\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\110\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [208 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 76
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 2
	i64 160518225272466977, ; 2: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 72
	i64 165455458108447059, ; 3: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 61
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 91
	i64 453419349103509061, ; 5: MQTTnet.dll => 0x64ade7ee59a7e45 => 79
	i64 464346026994987652, ; 6: System.Reactive.dll => 0x671b04057e67284 => 87
	i64 535107122908063503, ; 7: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 74
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 38
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 28
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 26
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 96
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 43
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 36
	i64 1342439039765371018, ; 14: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 16
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 0
	i64 1624659445732251991, ; 16: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 19
	i64 1653644849046973826, ; 17: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 86
	i64 1731380447121279447, ; 18: Newtonsoft.Json => 0x18071957e9b889d7 => 81
	i64 1795316252682057001, ; 19: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 20
	i64 1836611346387731153, ; 20: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 91
	i64 1938067011858688285, ; 21: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 18
	i64 1981742497975770890, ; 22: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 31
	i64 1986553961460820075, ; 23: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 92
	i64 2040001226662520565, ; 24: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 42
	i64 2126982051217054722, ; 25: GraphQL.Client.Abstractions.dll => 0x1d848ee8066c9c02 => 48
	i64 2133195048986300728, ; 26: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 81
	i64 2211629346905070259, ; 27: MQTTnet.Extensions.ManagedClient.dll => 0x1eb1492c5d1b1ab3 => 80
	i64 2262844636196693701, ; 28: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 26
	i64 2284400282711631002, ; 29: System.Web.Services => 0x1fb3d1f42fd4249a => 40
	i64 2329709569556905518, ; 30: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 30
	i64 2335503487726329082, ; 31: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 89
	i64 2337758774805907496, ; 32: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 9
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 22
	i64 2547086958574651984, ; 34: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 90
	i64 2592350477072141967, ; 35: System.Xml.dll => 0x23f9e10627330e8f => 10
	i64 2624866290265602282, ; 36: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 2783046991838674048, ; 37: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 9
	i64 2960931600190307745, ; 38: Xamarin.Forms.Core => 0x2917579a49927da1 => 94
	i64 3017704767998173186, ; 39: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 36
	i64 3021884968805928991, ; 40: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 55
	i64 3022227708164871115, ; 41: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 17
	i64 3168817962471953758, ; 42: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 72
	i64 3236662710921476042, ; 43: GraphQL.Client => 0x2ceaef96463a37ca => 50
	i64 3266690593535380875, ; 44: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 54
	i64 3289520064315143713, ; 45: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 29
	i64 3345245662906316484, ; 46: MQTTnet.AspNetCore => 0x2e6cb334dff276c4 => 78
	i64 3396143930648122816, ; 47: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 71
	i64 3522470458906976663, ; 48: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 34
	i64 3531994851595924923, ; 49: System.Numerics => 0x31042a9aade235bb => 8
	i64 3638003163729360188, ; 50: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 69
	i64 3727469159507183293, ; 51: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 33
	i64 4225924121207573736, ; 52: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 53
	i64 4243591448627561453, ; 53: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 63
	i64 4250192876909962317, ; 54: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 57
	i64 4255796613242758200, ; 55: zxing.portable => 0x3b0fa078b8a52438 => 102
	i64 4285531533572358052, ; 56: SEALNet.dll => 0x3b7944395c50bfa4 => 83
	i64 4292233171264798357, ; 57: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 99
	i64 4525561845656915374, ; 58: System.ServiceModel.Internals => 0x3ece06856b710dae => 41
	i64 4550950768676318303, ; 59: MQTTnet.Extensions.ManagedClient => 0x3f28399cb53e2c5f => 80
	i64 4777145119653888487, ; 60: GraphQL.Client.Abstractions => 0x424bd42d097601e7 => 48
	i64 4794310189461587505, ; 61: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 90
	i64 4795410492532947900, ; 62: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 34
	i64 4832426131961301651, ; 63: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 67
	i64 5112836352847824253, ; 64: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 68
	i64 5142919913060024034, ; 65: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 95
	i64 5177565741364132164, ; 66: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 62
	i64 5203618020066742981, ; 67: Xamarin.Essentials => 0x4836f704f0e652c5 => 93
	i64 5233983725610684227, ; 68: FastAndroidCamera => 0x48a2d877b5334f43 => 46
	i64 5507995362134886206, ; 69: System.Core.dll => 0x4c705499688c873e => 5
	i64 5593115988096097561, ; 70: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 66
	i64 5767696078500135884, ; 71: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 12
	i64 5767749323661124970, ; 72: ZXing.Net.Mobile.Core => 0x500b29737652256a => 99
	i64 6014447449592687183, ; 73: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 60
	i64 6085203216496545422, ; 74: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 96
	i64 6086316965293125504, ; 75: FormsViewGroup.dll => 0x5476f10882baef80 => 47
	i64 6400526741775627323, ; 76: Swan.Lite => 0x58d33d2902ecb43b => 84
	i64 6401687960814735282, ; 77: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 30
	i64 6548213210057960872, ; 78: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 25
	i64 6560151584539558821, ; 79: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 75
	i64 6588599331800941662, ; 80: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 18
	i64 6591024623626361694, ; 81: System.Web.Services.dll => 0x5b7805f9751a1b5e => 40
	i64 6659513131007730089, ; 82: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 28
	i64 6783125919820072783, ; 83: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 56
	i64 6876862101832370452, ; 84: System.Xml.Linq => 0x5f6f85a57d108914 => 11
	i64 6892424314611037586, ; 85: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 61
	i64 6911788284027924527, ; 86: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 58
	i64 7331765743953618630, ; 87: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 62
	i64 7488575175965059935, ; 88: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 11
	i64 7602111570124318452, ; 89: System.Reactive => 0x698020320025a6f4 => 87
	i64 7635363394907363464, ; 90: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 94
	i64 7637365915383206639, ; 91: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 93
	i64 7654504624184590948, ; 92: System.Net.Http => 0x6a3a4366801b8264 => 7
	i64 7723719516165783095, ; 93: GraphQL.Primitives => 0x6b3029fa59d03e37 => 52
	i64 7820441508502274321, ; 94: System.Data => 0x6c87ca1e14ff8111 => 37
	i64 7824823231109474690, ; 95: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 55
	i64 7836164640616011524, ; 96: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 19
	i64 8083354569033831015, ; 97: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 29
	i64 8101777744205214367, ; 98: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 12
	i64 8167236081217502503, ; 99: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8408425347822646438, ; 100: MQTTnet => 0x74b0ba4dd95bf4a6 => 79
	i64 8611142787134128904, ; 101: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 58
	i64 8626175481042262068, ; 102: Java.Interop => 0x77b654e585b55834 => 1
	i64 9324707631942237306, ; 103: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 20
	i64 9413000421947348542, ; 104: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 57
	i64 9662334977499516867, ; 105: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 106: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 22
	i64 9680125535200025837, ; 107: Swan.Lite.dll => 0x8656b6e302c91ced => 84
	i64 9808709177481450983, ; 108: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9938556199016768930, ; 109: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 66
	i64 9998632235833408227, ; 110: Mono.Security => 0x8ac2470b209ebae3 => 43
	i64 10038780035334861115, ; 111: System.Net.Http.dll => 0x8b50e941206af13b => 7
	i64 10229024438826829339, ; 112: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 25
	i64 10243523786148452761, ; 113: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 59
	i64 10255317838822259251, ; 114: MQTTnet.AspNetCore.dll => 0x8e52353d49ba3a33 => 78
	i64 10390244938473477758, ; 115: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 86
	i64 10430153318873392755, ; 116: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 23
	i64 10458986597687352396, ; 117: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 65
	i64 11002576679268595294, ; 118: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 73
	i64 11023048688141570732, ; 119: System.Core => 0x98f9bc61168392ac => 5
	i64 11037814507248023548, ; 120: System.Xml => 0x992e31d0412bf7fc => 10
	i64 11050168729868392624, ; 121: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 64
	i64 11122995063473561350, ; 122: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 92
	i64 11162124722117608902, ; 123: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 35
	i64 11226290749488709958, ; 124: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 75
	i64 11271030018705124707, ; 125: EmbedIO => 0x9c6abe15e5aeed63 => 45
	i64 11340910727871153756, ; 126: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 24
	i64 11376461258732682436, ; 127: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 13
	i64 11513602507638267977, ; 128: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 85
	i64 11529969570048099689, ; 129: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 35
	i64 11610598810550245541, ; 130: EmbedIO.dll => 0xa121221a446b98a5 => 45
	i64 11683710219442713716, ; 131: ZXingNetMobile => 0xa224e08aa87bf474 => 103
	i64 12036099219279441448, ; 132: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 101
	i64 12102847907131387746, ; 133: System.Buffers => 0xa7f5f40c43256f62 => 4
	i64 12313367145828839434, ; 134: System.IO.Pipelines => 0xaae1de2e1c17f00a => 85
	i64 12414299427252656003, ; 135: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 13
	i64 12441092376399691269, ; 136: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 53
	i64 12451044538927396471, ; 137: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 27
	i64 12466513435562512481, ; 138: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 32
	i64 12538491095302438457, ; 139: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 21
	i64 12550732019250633519, ; 140: System.IO.Compression => 0xae2d28465e8e1b2f => 39
	i64 12629983860853673214, ; 141: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 100
	i64 12843321153144804894, ; 142: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 76
	i64 12850075093249790340, ; 143: SEALMobile.Android => 0xb254a336f63f9184 => 44
	i64 12952608645614506925, ; 144: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 15
	i64 12963446364377008305, ; 145: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 38
	i64 13308002692117796025, ; 146: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 65
	i64 13358059602087096138, ; 147: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 16
	i64 13370592475155966277, ; 148: System.Runtime.Serialization => 0xb98de304062ea945 => 0
	i64 13404984788036896679, ; 149: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 59
	i64 13454009404024712428, ; 150: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 98
	i64 13550417756503177631, ; 151: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 71
	i64 13572454107664307259, ; 152: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 33
	i64 13647894001087880694, ; 153: System.Data.dll => 0xbd670f48cb071df6 => 37
	i64 13779825401921992567, ; 154: SEALMobile.Android.dll => 0xbf3bc631c476f777 => 44
	i64 13805269346080941231, ; 155: GraphQL.Primitives.dll => 0xbf962b53a9be64af => 52
	i64 13921917134693230900, ; 156: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 68
	i64 13959074834287824816, ; 157: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 27
	i64 13967638549803255703, ; 158: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 95
	i64 14106893623834139114, ; 159: SEALMobile => 0xc3c5c10264db59ea => 82
	i64 14124974489674258913, ; 160: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 21
	i64 14400856865250966808, ; 161: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 14
	i64 14417108365751812692, ; 162: GraphQL.Client.Abstractions.Websocket => 0xc813dbac6cf30254 => 49
	i64 14534488506574300263, ; 163: GraphQL.Client.Serializer.Newtonsoft.dll => 0xc9b4e04a2a5be467 => 51
	i64 14551742072151931844, ; 164: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 89
	i64 14792063746108907174, ; 165: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 98
	i64 14852515768018889994, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 24
	i64 14912225920358050525, ; 167: System.Security.Principal.Windows => 0xcef2de7759506add => 88
	i64 14954388675289411854, ; 168: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 101
	i64 14954917835170835695, ; 169: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 70
	i64 14970005946259062041, ; 170: GraphQL.Client.dll => 0xcfc02517f841bd19 => 50
	i64 14987728460634540364, ; 171: System.IO.Compression.dll => 0xcfff1ba06622494c => 39
	i64 15227001540531775957, ; 172: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 69
	i64 15370334346939861994, ; 173: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 23
	i64 15391712275433856905, ; 174: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 70
	i64 15457813392950723921, ; 175: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 17
	i64 15487084393150355677, ; 176: SEALNet => 0xd6ed2d33943918dd => 83
	i64 15565247197164990907, ; 177: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 63
	i64 15592226634512578529, ; 178: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 54
	i64 15609085926864131306, ; 179: System.dll => 0xd89e9cf3334914ea => 6
	i64 15670855323609989834, ; 180: GraphQL.Client.Serializer.Newtonsoft => 0xd97a0fe39a5002ca => 51
	i64 15810740023422282496, ; 181: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 97
	i64 15851975962649584118, ; 182: zxing.portable.dll => 0xdbfd882691c261f6 => 102
	i64 15852824340364052161, ; 183: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 64
	i64 15963349826457351533, ; 184: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 42
	i64 15982072519490392252, ; 185: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 67
	i64 16046481083542319511, ; 186: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 74
	i64 16107354805249926211, ; 187: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 103
	i64 16119456071779071829, ; 188: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 46
	i64 16154507427712707110, ; 189: System => 0xe03056ea4e39aa26 => 6
	i64 16321164108206115771, ; 190: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 73
	i64 16337011941688632206, ; 191: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 88
	i64 16350134167586635484, ; 192: SEALMobile.dll => 0xe2e7586610fa7edc => 82
	i64 16526376532108668976, ; 193: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 100
	i64 16833383113903931215, ; 194: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 16932527889823454152, ; 195: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 15
	i64 17126545051278881272, ; 196: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 77
	i64 17402946359471614147, ; 197: GraphQL.Client.Abstractions.Websocket.dll => 0xf183af82597ba8c3 => 49
	i64 17428701562824544279, ; 198: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 14
	i64 17571845317586269034, ; 199: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 56
	i64 17636563193350668017, ; 200: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 60
	i64 17704177640604968747, ; 201: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 32
	i64 17710060891934109755, ; 202: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 31
	i64 17838668724098252521, ; 203: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 4
	i64 17882897186074144999, ; 204: FormsViewGroup => 0xf82cd03e3ac830e7 => 47
	i64 17892495832318972303, ; 205: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 97
	i64 17911643751311784505, ; 206: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 77
	i64 18129453464017766560 ; 207: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 41
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [208 x i32] [
	i32 76, i32 2, i32 72, i32 61, i32 91, i32 79, i32 87, i32 74, ; 0..7
	i32 38, i32 28, i32 26, i32 96, i32 43, i32 36, i32 16, i32 0, ; 8..15
	i32 19, i32 86, i32 81, i32 20, i32 91, i32 18, i32 31, i32 92, ; 16..23
	i32 42, i32 48, i32 81, i32 80, i32 26, i32 40, i32 30, i32 89, ; 24..31
	i32 9, i32 22, i32 90, i32 10, i32 3, i32 9, i32 94, i32 36, ; 32..39
	i32 55, i32 17, i32 72, i32 50, i32 54, i32 29, i32 78, i32 71, ; 40..47
	i32 34, i32 8, i32 69, i32 33, i32 53, i32 63, i32 57, i32 102, ; 48..55
	i32 83, i32 99, i32 41, i32 80, i32 48, i32 90, i32 34, i32 67, ; 56..63
	i32 68, i32 95, i32 62, i32 93, i32 46, i32 5, i32 66, i32 12, ; 64..71
	i32 99, i32 60, i32 96, i32 47, i32 84, i32 30, i32 25, i32 75, ; 72..79
	i32 18, i32 40, i32 28, i32 56, i32 11, i32 61, i32 58, i32 62, ; 80..87
	i32 11, i32 87, i32 94, i32 93, i32 7, i32 52, i32 37, i32 55, ; 88..95
	i32 19, i32 29, i32 12, i32 1, i32 79, i32 58, i32 1, i32 20, ; 96..103
	i32 57, i32 8, i32 22, i32 84, i32 2, i32 66, i32 43, i32 7, ; 104..111
	i32 25, i32 59, i32 78, i32 86, i32 23, i32 65, i32 73, i32 5, ; 112..119
	i32 10, i32 64, i32 92, i32 35, i32 75, i32 45, i32 24, i32 13, ; 120..127
	i32 85, i32 35, i32 45, i32 103, i32 101, i32 4, i32 85, i32 13, ; 128..135
	i32 53, i32 27, i32 32, i32 21, i32 39, i32 100, i32 76, i32 44, ; 136..143
	i32 15, i32 38, i32 65, i32 16, i32 0, i32 59, i32 98, i32 71, ; 144..151
	i32 33, i32 37, i32 44, i32 52, i32 68, i32 27, i32 95, i32 82, ; 152..159
	i32 21, i32 14, i32 49, i32 51, i32 89, i32 98, i32 24, i32 88, ; 160..167
	i32 101, i32 70, i32 50, i32 39, i32 69, i32 23, i32 70, i32 17, ; 168..175
	i32 83, i32 63, i32 54, i32 6, i32 51, i32 97, i32 102, i32 64, ; 176..183
	i32 42, i32 67, i32 74, i32 103, i32 46, i32 6, i32 73, i32 88, ; 184..191
	i32 82, i32 100, i32 3, i32 15, i32 77, i32 49, i32 14, i32 56, ; 192..199
	i32 60, i32 32, i32 31, i32 4, i32 47, i32 97, i32 77, i32 41 ; 208..207
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
