; ModuleID = 'obj\Debug\110\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\110\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 91
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 37
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 39
	i64 160518225272466977, ; 3: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 33
	i64 165455458108447059, ; 4: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 22
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 81
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 113
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 114
	i64 453419349103509061, ; 8: MQTTnet.dll => 0x64ade7ee59a7e45 => 41
	i64 464346026994987652, ; 9: System.Reactive.dll => 0x671b04057e67284 => 57
	i64 535107122908063503, ; 10: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 35
	i64 634308326490598313, ; 11: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 100
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 139
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 94
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 90
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 137
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 127
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 146
	i64 1120440138749646132, ; 18: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 129
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 76
	i64 1342439039765371018, ; 20: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 68
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 74
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 102
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 95
	i64 1653644849046973826, ; 25: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 54
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 44
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 52
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 75
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 113
	i64 1875917498431009007, ; 30: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 72
	i64 1938067011858688285, ; 31: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 70
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 101
	i64 1986553961460820075, ; 33: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 123
	i64 2040001226662520565, ; 34: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 145
	i64 2126982051217054722, ; 35: GraphQL.Client.Abstractions.dll => 0x1d848ee8066c9c02 => 8
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 44
	i64 2136356949452311481, ; 37: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 106
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 79
	i64 2211629346905070259, ; 39: MQTTnet.Extensions.ManagedClient.dll => 0x1eb1492c5d1b1ab3 => 42
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 90
	i64 2284400282711631002, ; 41: System.Web.Services => 0x1fb3d1f42fd4249a => 143
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 98
	i64 2335503487726329082, ; 43: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 61
	i64 2337758774805907496, ; 44: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 58
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 85
	i64 2479423007379663237, ; 46: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 118
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 59
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 71
	i64 2592350477072141967, ; 49: System.Xml.dll => 0x23f9e10627330e8f => 62
	i64 2624866290265602282, ; 50: mscorlib.dll => 0x246d65fbde2db8ea => 43
	i64 2694427813909235223, ; 51: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 110
	i64 2783046991838674048, ; 52: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 58
	i64 2960931600190307745, ; 53: Xamarin.Forms.Core => 0x2917579a49927da1 => 125
	i64 3017704767998173186, ; 54: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 129
	i64 3021884968805928991, ; 55: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 16
	i64 3022227708164871115, ; 56: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 69
	i64 3168817962471953758, ; 57: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 33
	i64 3236662710921476042, ; 58: GraphQL.Client => 0x2ceaef96463a37ca => 10
	i64 3266690593535380875, ; 59: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 15
	i64 3289520064315143713, ; 60: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 97
	i64 3303437397778967116, ; 61: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 73
	i64 3311221304742556517, ; 62: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 56
	i64 3345245662906316484, ; 63: MQTTnet.AspNetCore => 0x2e6cb334dff276c4 => 40
	i64 3396143930648122816, ; 64: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 32
	i64 3493805808809882663, ; 65: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 116
	i64 3522470458906976663, ; 66: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 115
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 55
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 59
	i64 3638003163729360188, ; 69: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 30
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 112
	i64 3772598417116884899, ; 72: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 91
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 52
	i64 4225924121207573736, ; 74: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 14
	i64 4243591448627561453, ; 75: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 24
	i64 4250192876909962317, ; 76: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 18
	i64 4255796613242758200, ; 77: zxing.portable => 0x3b0fa078b8a52438 => 134
	i64 4285531533572358052, ; 78: SEALNet.dll => 0x3b7944395c50bfa4 => 46
	i64 4292233171264798357, ; 79: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 131
	i64 4525561845656915374, ; 80: System.ServiceModel.Internals => 0x3ece06856b710dae => 144
	i64 4550950768676318303, ; 81: MQTTnet.Extensions.ManagedClient => 0x3f28399cb53e2c5f => 42
	i64 4636684751163556186, ; 82: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 120
	i64 4777145119653888487, ; 83: GraphQL.Client.Abstractions => 0x424bd42d097601e7 => 8
	i64 4782108999019072045, ; 84: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 78
	i64 4794310189461587505, ; 85: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 71
	i64 4795410492532947900, ; 86: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 115
	i64 4832426131961301651, ; 87: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 28
	i64 5112836352847824253, ; 88: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 29
	i64 5142919913060024034, ; 89: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 126
	i64 5177565741364132164, ; 90: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 23
	i64 5203618020066742981, ; 91: Xamarin.Essentials => 0x4836f704f0e652c5 => 124
	i64 5205316157927637098, ; 92: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 104
	i64 5233983725610684227, ; 93: FastAndroidCamera => 0x48a2d877b5334f43 => 6
	i64 5348796042099802469, ; 94: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 105
	i64 5376510917114486089, ; 95: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 118
	i64 5408338804355907810, ; 96: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 117
	i64 5446034149219586269, ; 97: System.Diagnostics.Debug => 0x4b94333452e150dd => 149
	i64 5451019430259338467, ; 98: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 84
	i64 5507995362134886206, ; 99: System.Core.dll => 0x4c705499688c873e => 49
	i64 5593115988096097561, ; 100: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 27
	i64 5692067934154308417, ; 101: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 122
	i64 5757522595884336624, ; 102: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 82
	i64 5767696078500135884, ; 103: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 64
	i64 5767749323661124970, ; 104: ZXing.Net.Mobile.Core => 0x500b29737652256a => 131
	i64 5814345312393086621, ; 105: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 110
	i64 5896680224035167651, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 99
	i64 6014447449592687183, ; 107: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 21
	i64 6085203216496545422, ; 108: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 127
	i64 6086316965293125504, ; 109: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6319713645133255417, ; 110: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 100
	i64 6400526741775627323, ; 111: Swan.Lite => 0x58d33d2902ecb43b => 47
	i64 6401687960814735282, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 98
	i64 6504860066809920875, ; 113: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 79
	i64 6548213210057960872, ; 114: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 88
	i64 6560151584539558821, ; 115: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 36
	i64 6588599331800941662, ; 116: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 70
	i64 6591024623626361694, ; 117: System.Web.Services.dll => 0x5b7805f9751a1b5e => 143
	i64 6659513131007730089, ; 118: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 94
	i64 6783125919820072783, ; 119: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 17
	i64 6876862101832370452, ; 120: System.Xml.Linq => 0x5f6f85a57d108914 => 63
	i64 6892424314611037586, ; 121: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 22
	i64 6894844156784520562, ; 122: System.Numerics.Vectors => 0x5faf683aead1ad72 => 56
	i64 6911788284027924527, ; 123: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 19
	i64 7036436454368433159, ; 124: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 96
	i64 7103753931438454322, ; 125: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 93
	i64 7141577505875122296, ; 126: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 3
	i64 7331765743953618630, ; 127: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 23
	i64 7488575175965059935, ; 128: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 63
	i64 7489048572193775167, ; 129: System.ObjectModel => 0x67ee71ff6b419e3f => 150
	i64 7602111570124318452, ; 130: System.Reactive => 0x698020320025a6f4 => 57
	i64 7635363394907363464, ; 131: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 125
	i64 7637365915383206639, ; 132: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 124
	i64 7654504624184590948, ; 133: System.Net.Http => 0x6a3a4366801b8264 => 53
	i64 7723719516165783095, ; 134: GraphQL.Primitives => 0x6b3029fa59d03e37 => 12
	i64 7820441508502274321, ; 135: System.Data => 0x6c87ca1e14ff8111 => 136
	i64 7824823231109474690, ; 136: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 16
	i64 7836164640616011524, ; 137: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 74
	i64 8044118961405839122, ; 138: System.ComponentModel.Composition => 0x6fa2739369944712 => 142
	i64 8064050204834738623, ; 139: System.Collections.dll => 0x6fe942efa61731bf => 147
	i64 8083354569033831015, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 97
	i64 8101777744205214367, ; 141: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 64
	i64 8103644804370223335, ; 142: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 138
	i64 8167236081217502503, ; 143: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 13
	i64 8185542183669246576, ; 144: System.Collections => 0x7198e33f4794aa70 => 147
	i64 8290740647658429042, ; 145: System.Runtime.Extensions => 0x730ea0b15c929a72 => 148
	i64 8398329775253868912, ; 146: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 83
	i64 8400357532724379117, ; 147: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 109
	i64 8408425347822646438, ; 148: MQTTnet => 0x74b0ba4dd95bf4a6 => 41
	i64 8601935802264776013, ; 149: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 117
	i64 8611142787134128904, ; 150: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 19
	i64 8626175481042262068, ; 151: Java.Interop => 0x77b654e585b55834 => 13
	i64 8639588376636138208, ; 152: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 108
	i64 8684531736582871431, ; 153: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 141
	i64 9312692141327339315, ; 154: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 122
	i64 9324707631942237306, ; 155: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 75
	i64 9413000421947348542, ; 156: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 18
	i64 9584643793929893533, ; 157: System.IO.dll => 0x85037ebfbbd7f69d => 153
	i64 9659729154652888475, ; 158: System.Text.RegularExpressions => 0x860e407c9991dd9b => 154
	i64 9662334977499516867, ; 159: System.Numerics.dll => 0x8617827802b0cfc3 => 55
	i64 9678050649315576968, ; 160: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 85
	i64 9680125535200025837, ; 161: Swan.Lite.dll => 0x8656b6e302c91ced => 47
	i64 9711637524876806384, ; 162: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 105
	i64 9808709177481450983, ; 163: Mono.Android.dll => 0x881f890734e555e7 => 39
	i64 9825649861376906464, ; 164: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 82
	i64 9834056768316610435, ; 165: System.Transactions.dll => 0x8879968718899783 => 137
	i64 9938556199016768930, ; 166: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 27
	i64 9998632235833408227, ; 167: Mono.Security => 0x8ac2470b209ebae3 => 146
	i64 10038780035334861115, ; 168: System.Net.Http.dll => 0x8b50e941206af13b => 53
	i64 10229024438826829339, ; 169: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 88
	i64 10243523786148452761, ; 170: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 20
	i64 10255317838822259251, ; 171: MQTTnet.AspNetCore.dll => 0x8e52353d49ba3a33 => 40
	i64 10360651442923773544, ; 172: System.Text.Encoding => 0x8fc86d98211c1e68 => 152
	i64 10376576884623852283, ; 173: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 116
	i64 10390244938473477758, ; 174: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 54
	i64 10430153318873392755, ; 175: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 86
	i64 10458986597687352396, ; 176: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 26
	i64 10566960649245365243, ; 177: System.Globalization.dll => 0x92a562b96dcd13fb => 155
	i64 10714184849103829812, ; 178: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 148
	i64 10847732767863316357, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 76
	i64 11002576679268595294, ; 180: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 34
	i64 11023048688141570732, ; 181: System.Core => 0x98f9bc61168392ac => 49
	i64 11037814507248023548, ; 182: System.Xml => 0x992e31d0412bf7fc => 62
	i64 11050168729868392624, ; 183: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 25
	i64 11122995063473561350, ; 184: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 123
	i64 11162124722117608902, ; 185: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 121
	i64 11226290749488709958, ; 186: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 36
	i64 11271030018705124707, ; 187: EmbedIO => 0x9c6abe15e5aeed63 => 5
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 87
	i64 11376461258732682436, ; 189: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 65
	i64 11392833485892708388, ; 190: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 111
	i64 11513602507638267977, ; 191: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 51
	i64 11529969570048099689, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 121
	i64 11578238080964724296, ; 193: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 96
	i64 11580057168383206117, ; 194: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 72
	i64 11597940890313164233, ; 195: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11610598810550245541, ; 196: EmbedIO.dll => 0xa121221a446b98a5 => 5
	i64 11672361001936329215, ; 197: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 93
	i64 11683710219442713716, ; 198: ZXingNetMobile => 0xa224e08aa87bf474 => 135
	i64 11743665907891708234, ; 199: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 2
	i64 12036099219279441448, ; 200: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 133
	i64 12102847907131387746, ; 201: System.Buffers => 0xa7f5f40c43256f62 => 48
	i64 12137774235383566651, ; 202: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 119
	i64 12313367145828839434, ; 203: System.IO.Pipelines => 0xaae1de2e1c17f00a => 51
	i64 12414299427252656003, ; 204: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 65
	i64 12441092376399691269, ; 205: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 14
	i64 12451044538927396471, ; 206: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 92
	i64 12466513435562512481, ; 207: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 103
	i64 12487638416075308985, ; 208: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 89
	i64 12538491095302438457, ; 209: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 80
	i64 12550732019250633519, ; 210: System.IO.Compression => 0xae2d28465e8e1b2f => 140
	i64 12629983860853673214, ; 211: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 132
	i64 12700543734426720211, ; 212: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 81
	i64 12708238894395270091, ; 213: System.IO => 0xb05cbbf17d3ba3cb => 153
	i64 12843321153144804894, ; 214: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 37
	i64 12850075093249790340, ; 215: SEALMobile.Android => 0xb254a336f63f9184 => 0
	i64 12952608645614506925, ; 216: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 67
	i64 12963446364377008305, ; 217: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 139
	i64 13308002692117796025, ; 218: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 26
	i64 13358059602087096138, ; 219: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 68
	i64 13370592475155966277, ; 220: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 221: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 119
	i64 13404347523447273790, ; 222: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 83
	i64 13404984788036896679, ; 223: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 20
	i64 13454009404024712428, ; 224: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 130
	i64 13491513212026656886, ; 225: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 77
	i64 13550417756503177631, ; 226: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 32
	i64 13572454107664307259, ; 227: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 112
	i64 13647894001087880694, ; 228: System.Data.dll => 0xbd670f48cb071df6 => 136
	i64 13779825401921992567, ; 229: SEALMobile.Android.dll => 0xbf3bc631c476f777 => 0
	i64 13805269346080941231, ; 230: GraphQL.Primitives.dll => 0xbf962b53a9be64af => 12
	i64 13921917134693230900, ; 231: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 29
	i64 13959074834287824816, ; 232: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 92
	i64 13967638549803255703, ; 233: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 126
	i64 14106893623834139114, ; 234: SEALMobile => 0xc3c5c10264db59ea => 45
	i64 14124974489674258913, ; 235: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 80
	i64 14125464355221830302, ; 236: System.Threading.dll => 0xc407bafdbc707a9e => 151
	i64 14172845254133543601, ; 237: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 106
	i64 14261073672896646636, ; 238: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 111
	i64 14400856865250966808, ; 239: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 66
	i64 14417108365751812692, ; 240: GraphQL.Client.Abstractions.Websocket => 0xc813dbac6cf30254 => 9
	i64 14486659737292545672, ; 241: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 99
	i64 14534488506574300263, ; 242: GraphQL.Client.Serializer.Newtonsoft.dll => 0xc9b4e04a2a5be467 => 11
	i64 14551742072151931844, ; 243: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 61
	i64 14644440854989303794, ; 244: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 104
	i64 14792063746108907174, ; 245: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 130
	i64 14852515768018889994, ; 246: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 87
	i64 14912225920358050525, ; 247: System.Security.Principal.Windows => 0xcef2de7759506add => 60
	i64 14954388675289411854, ; 248: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 133
	i64 14954917835170835695, ; 249: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 31
	i64 14970005946259062041, ; 250: GraphQL.Client.dll => 0xcfc02517f841bd19 => 10
	i64 14987728460634540364, ; 251: System.IO.Compression.dll => 0xcfff1ba06622494c => 140
	i64 14988210264188246988, ; 252: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 89
	i64 15076659072870671916, ; 253: System.ObjectModel.dll => 0xd13b0d8c1620662c => 150
	i64 15227001540531775957, ; 254: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 30
	i64 15370334346939861994, ; 255: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 86
	i64 15391712275433856905, ; 256: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 31
	i64 15457813392950723921, ; 257: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 69
	i64 15487084393150355677, ; 258: SEALNet => 0xd6ed2d33943918dd => 46
	i64 15526743539506359484, ; 259: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 152
	i64 15565247197164990907, ; 260: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 24
	i64 15582737692548360875, ; 261: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 102
	i64 15592226634512578529, ; 262: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 15
	i64 15609085926864131306, ; 263: System.dll => 0xd89e9cf3334914ea => 50
	i64 15670855323609989834, ; 264: GraphQL.Client.Serializer.Newtonsoft => 0xd97a0fe39a5002ca => 11
	i64 15777549416145007739, ; 265: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 114
	i64 15810740023422282496, ; 266: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 128
	i64 15817206913877585035, ; 267: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 2
	i64 15851975962649584118, ; 268: zxing.portable.dll => 0xdbfd882691c261f6 => 134
	i64 15852824340364052161, ; 269: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 25
	i64 15963349826457351533, ; 270: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 145
	i64 15982072519490392252, ; 271: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 28
	i64 16046481083542319511, ; 272: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 35
	i64 16107354805249926211, ; 273: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 135
	i64 16119456071779071829, ; 274: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 6
	i64 16154507427712707110, ; 275: System => 0xe03056ea4e39aa26 => 50
	i64 16321164108206115771, ; 276: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 34
	i64 16337011941688632206, ; 277: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 60
	i64 16350134167586635484, ; 278: SEALMobile.dll => 0xe2e7586610fa7edc => 45
	i64 16526376532108668976, ; 279: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 132
	i64 16565028646146589191, ; 280: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 142
	i64 16621146507174665210, ; 281: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 84
	i64 16677317093839702854, ; 282: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 109
	i64 16822611501064131242, ; 283: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 138
	i64 16833383113903931215, ; 284: mscorlib => 0xe99c30c1484d7f4f => 43
	i64 16866861824412579935, ; 285: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 3
	i64 16890310621557459193, ; 286: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 154
	i64 16932527889823454152, ; 287: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 67
	i64 17024911836938395553, ; 288: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 73
	i64 17031351772568316411, ; 289: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 107
	i64 17037200463775726619, ; 290: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 95
	i64 17126545051278881272, ; 291: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 38
	i64 17402946359471614147, ; 292: GraphQL.Client.Abstractions.Websocket.dll => 0xf183af82597ba8c3 => 9
	i64 17428701562824544279, ; 293: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 66
	i64 17544493274320527064, ; 294: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 78
	i64 17571845317586269034, ; 295: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 17
	i64 17627500474728259406, ; 296: System.Globalization => 0xf4a176498a351f4e => 155
	i64 17636563193350668017, ; 297: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 21
	i64 17685921127322830888, ; 298: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 149
	i64 17704177640604968747, ; 299: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 103
	i64 17710060891934109755, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 101
	i64 17838668724098252521, ; 301: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 48
	i64 17882897186074144999, ; 302: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17892495832318972303, ; 303: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 128
	i64 17911643751311784505, ; 304: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 38
	i64 17928294245072900555, ; 305: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 141
	i64 18025913125965088385, ; 306: System.Threading => 0xfa28e87b91334681 => 151
	i64 18116111925905154859, ; 307: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 77
	i64 18121036031235206392, ; 308: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 107
	i64 18129453464017766560, ; 309: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 144
	i64 18305135509493619199, ; 310: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 108
	i64 18380184030268848184 ; 311: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 120
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 91, i32 37, i32 39, i32 33, i32 22, i32 81, i32 113, i32 114, ; 0..7
	i32 41, i32 57, i32 35, i32 100, i32 139, i32 94, i32 90, i32 137, ; 8..15
	i32 127, i32 146, i32 129, i32 76, i32 68, i32 4, i32 74, i32 102, ; 16..23
	i32 95, i32 54, i32 44, i32 52, i32 75, i32 113, i32 72, i32 70, ; 24..31
	i32 101, i32 123, i32 145, i32 8, i32 44, i32 106, i32 79, i32 42, ; 32..39
	i32 90, i32 143, i32 98, i32 61, i32 58, i32 85, i32 118, i32 59, ; 40..47
	i32 71, i32 62, i32 43, i32 110, i32 58, i32 125, i32 129, i32 16, ; 48..55
	i32 69, i32 33, i32 10, i32 15, i32 97, i32 73, i32 56, i32 40, ; 56..63
	i32 32, i32 116, i32 115, i32 55, i32 59, i32 30, i32 1, i32 112, ; 64..71
	i32 91, i32 52, i32 14, i32 24, i32 18, i32 134, i32 46, i32 131, ; 72..79
	i32 144, i32 42, i32 120, i32 8, i32 78, i32 71, i32 115, i32 28, ; 80..87
	i32 29, i32 126, i32 23, i32 124, i32 104, i32 6, i32 105, i32 118, ; 88..95
	i32 117, i32 149, i32 84, i32 49, i32 27, i32 122, i32 82, i32 64, ; 96..103
	i32 131, i32 110, i32 99, i32 21, i32 127, i32 7, i32 100, i32 47, ; 104..111
	i32 98, i32 79, i32 88, i32 36, i32 70, i32 143, i32 94, i32 17, ; 112..119
	i32 63, i32 22, i32 56, i32 19, i32 96, i32 93, i32 3, i32 23, ; 120..127
	i32 63, i32 150, i32 57, i32 125, i32 124, i32 53, i32 12, i32 136, ; 128..135
	i32 16, i32 74, i32 142, i32 147, i32 97, i32 64, i32 138, i32 13, ; 136..143
	i32 147, i32 148, i32 83, i32 109, i32 41, i32 117, i32 19, i32 13, ; 144..151
	i32 108, i32 141, i32 122, i32 75, i32 18, i32 153, i32 154, i32 55, ; 152..159
	i32 85, i32 47, i32 105, i32 39, i32 82, i32 137, i32 27, i32 146, ; 160..167
	i32 53, i32 88, i32 20, i32 40, i32 152, i32 116, i32 54, i32 86, ; 168..175
	i32 26, i32 155, i32 148, i32 76, i32 34, i32 49, i32 62, i32 25, ; 176..183
	i32 123, i32 121, i32 36, i32 5, i32 87, i32 65, i32 111, i32 51, ; 184..191
	i32 121, i32 96, i32 72, i32 1, i32 5, i32 93, i32 135, i32 2, ; 192..199
	i32 133, i32 48, i32 119, i32 51, i32 65, i32 14, i32 92, i32 103, ; 200..207
	i32 89, i32 80, i32 140, i32 132, i32 81, i32 153, i32 37, i32 0, ; 208..215
	i32 67, i32 139, i32 26, i32 68, i32 4, i32 119, i32 83, i32 20, ; 216..223
	i32 130, i32 77, i32 32, i32 112, i32 136, i32 0, i32 12, i32 29, ; 224..231
	i32 92, i32 126, i32 45, i32 80, i32 151, i32 106, i32 111, i32 66, ; 232..239
	i32 9, i32 99, i32 11, i32 61, i32 104, i32 130, i32 87, i32 60, ; 240..247
	i32 133, i32 31, i32 10, i32 140, i32 89, i32 150, i32 30, i32 86, ; 248..255
	i32 31, i32 69, i32 46, i32 152, i32 24, i32 102, i32 15, i32 50, ; 256..263
	i32 11, i32 114, i32 128, i32 2, i32 134, i32 25, i32 145, i32 28, ; 264..271
	i32 35, i32 135, i32 6, i32 50, i32 34, i32 60, i32 45, i32 132, ; 272..279
	i32 142, i32 84, i32 109, i32 138, i32 43, i32 3, i32 154, i32 67, ; 280..287
	i32 73, i32 107, i32 95, i32 38, i32 9, i32 66, i32 78, i32 17, ; 288..295
	i32 155, i32 21, i32 149, i32 103, i32 101, i32 48, i32 7, i32 128, ; 296..303
	i32 38, i32 141, i32 151, i32 77, i32 107, i32 144, i32 108, i32 120 ; 312..311
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
