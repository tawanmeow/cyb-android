; ModuleID = 'obj\Debug\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\110\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 100
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 130
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 44
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 125
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 114
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 114
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 81
	i32 166922606, ; 7: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 65
	i32 172012715, ; 8: FastAndroidCamera.dll => 0xa40b4ab => 6
	i32 176714968, ; 9: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 29
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 115
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 79
	i32 219130465, ; 12: Xamarin.Android.Support.v4 => 0xd0faa61 => 70
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 149
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 95
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 155
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 143
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 84
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 99
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 93
	i32 300686228, ; 20: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 14
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 71
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 55
	i32 334355562, ; 23: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 133
	i32 342366114, ; 24: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 97
	i32 348048101, ; 25: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 21
	i32 384051609, ; 26: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 27
	i32 385762202, ; 27: System.Memory.dll => 0x16fe439a => 52
	i32 389971796, ; 28: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 66
	i32 417611542, ; 29: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 28
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 83
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 124
	i32 442565967, ; 32: System.Collections => 0x1a61054f => 147
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 92
	i32 465846621, ; 34: mscorlib => 0x1bc4415d => 43
	i32 469710990, ; 35: System.dll => 0x1bff388e => 50
	i32 476646585, ; 36: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 93
	i32 478296930, ; 37: MQTTnet => 0x1c823b62 => 41
	i32 481696718, ; 38: GraphQL.Primitives => 0x1cb61bce => 12
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 104
	i32 490002678, ; 40: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 19
	i32 498788369, ; 41: System.ObjectModel => 0x1dbae811 => 150
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 37
	i32 514659665, ; 43: Xamarin.Android.Support.Compat => 0x1ead1551 => 65
	i32 526420162, ; 44: System.Transactions.dll => 0x1f6088c2 => 137
	i32 545304856, ; 45: System.Runtime.Extensions => 0x2080b118 => 148
	i32 605376203, ; 46: System.IO.Compression.FileSystem => 0x24154ecb => 141
	i32 610194910, ; 47: System.Reactive.dll => 0x245ed5de => 57
	i32 620237444, ; 48: MQTTnet.Extensions.ManagedClient.dll => 0x24f81284 => 42
	i32 627609679, ; 49: Xamarin.AndroidX.CustomView => 0x2568904f => 88
	i32 662205335, ; 50: System.Text.Encodings.Web.dll => 0x27787397 => 61
	i32 663517072, ; 51: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 120
	i32 666292255, ; 52: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 76
	i32 690569205, ; 53: System.Xml.Linq.dll => 0x29293ff5 => 63
	i32 692692150, ; 54: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 64
	i32 724146010, ; 55: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 16
	i32 742762115, ; 56: EmbedIO.dll => 0x2c45a683 => 5
	i32 775507847, ; 57: System.IO.Compression => 0x2e394f87 => 140
	i32 789151979, ; 58: Microsoft.Extensions.Options => 0x2f0980eb => 36
	i32 809851609, ; 59: System.Drawing.Common.dll => 0x30455ad9 => 139
	i32 843511501, ; 60: Xamarin.AndroidX.Print => 0x3246f6cd => 111
	i32 877678880, ; 61: System.Globalization.dll => 0x34505120 => 155
	i32 882883187, ; 62: Xamarin.Android.Support.v4.dll => 0x349fba73 => 70
	i32 905495016, ; 63: GraphQL.Client.Abstractions.Websocket.dll => 0x35f8c1e8 => 9
	i32 928116545, ; 64: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 130
	i32 954320159, ; 65: ZXing.Net.Mobile.Forms => 0x38e1c51f => 133
	i32 955402788, ; 66: Newtonsoft.Json => 0x38f24a24 => 44
	i32 958213972, ; 67: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 69
	i32 967690846, ; 68: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 97
	i32 974778368, ; 69: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 992768348, ; 70: System.Collections.dll => 0x3b2c715c => 147
	i32 1012816738, ; 71: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 113
	i32 1028951442, ; 72: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 31
	i32 1035644815, ; 73: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 75
	i32 1042160112, ; 74: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 127
	i32 1052210849, ; 75: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 101
	i32 1058641855, ; 76: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 21
	i32 1098259244, ; 77: System => 0x41761b2c => 50
	i32 1104876031, ; 78: MQTTnet.AspNetCore.dll => 0x41db11ff => 40
	i32 1110309514, ; 79: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 33
	i32 1112354281, ; 80: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 14
	i32 1134191450, ; 81: ZXingNetMobile.dll => 0x439a635a => 135
	i32 1173126369, ; 82: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 32
	i32 1175144683, ; 83: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 118
	i32 1178241025, ; 84: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 108
	i32 1204270330, ; 85: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 76
	i32 1220193633, ; 86: Microsoft.Net.Http.Headers => 0x48baad61 => 38
	i32 1236289705, ; 87: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 19
	i32 1251725941, ; 88: EmbedIO => 0x4a9bd275 => 5
	i32 1267360935, ; 89: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 119
	i32 1267908789, ; 90: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 27
	i32 1279824341, ; 91: SEALNet.dll => 0x4c4891d5 => 46
	i32 1281496230, ; 92: Swan.Lite.dll => 0x4c6214a6 => 47
	i32 1293217323, ; 93: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 90
	i32 1364015309, ; 94: System.IO => 0x514d38cd => 153
	i32 1365406463, ; 95: System.ServiceModel.Internals.dll => 0x516272ff => 144
	i32 1376866003, ; 96: Xamarin.AndroidX.SavedState => 0x52114ed3 => 113
	i32 1390332905, ; 97: GraphQL.Client.Abstractions => 0x52decbe9 => 8
	i32 1395857551, ; 98: Xamarin.AndroidX.Media.dll => 0x5333188f => 105
	i32 1406073936, ; 99: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 85
	i32 1411638395, ; 100: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 58
	i32 1414043276, ; 101: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 17
	i32 1445445088, ; 102: Xamarin.Android.Support.Fragment => 0x5627bde0 => 68
	i32 1457743152, ; 103: System.Runtime.Extensions.dll => 0x56e36530 => 148
	i32 1460219004, ; 104: Xamarin.Forms.Xaml => 0x57092c7c => 128
	i32 1462112819, ; 105: System.IO.Compression.dll => 0x57261233 => 140
	i32 1469204771, ; 106: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 74
	i32 1470490898, ; 107: Microsoft.Extensions.Primitives => 0x57a5e912 => 37
	i32 1510416510, ; 108: GraphQL.Client => 0x5a07207e => 10
	i32 1543031311, ; 109: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 154
	i32 1571005899, ; 110: zxing.portable => 0x5da3a5cb => 134
	i32 1574652163, ; 111: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 67
	i32 1582372066, ; 112: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 89
	i32 1592978981, ; 113: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1621546273, ; 114: GraphQL.Client.Serializer.Newtonsoft.dll => 0x60a6d521 => 11
	i32 1622152042, ; 115: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 103
	i32 1624863272, ; 116: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 122
	i32 1636350590, ; 117: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 87
	i32 1639515021, ; 118: System.Net.Http.dll => 0x61b9038d => 53
	i32 1639986890, ; 119: System.Text.RegularExpressions => 0x61c036ca => 154
	i32 1657153582, ; 120: System.Runtime => 0x62c6282e => 59
	i32 1658241508, ; 121: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 116
	i32 1658251792, ; 122: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 129
	i32 1670060433, ; 123: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 84
	i32 1701541528, ; 124: System.Diagnostics.Debug.dll => 0x656b7698 => 149
	i32 1729485958, ; 125: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 80
	i32 1746115085, ; 126: System.IO.Pipelines.dll => 0x68139a0d => 51
	i32 1766324549, ; 127: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 115
	i32 1776026572, ; 128: System.Core.dll => 0x69dc03cc => 49
	i32 1788241197, ; 129: Xamarin.AndroidX.Fragment => 0x6a96652d => 92
	i32 1808609942, ; 130: Xamarin.AndroidX.Loader => 0x6bcd3296 => 103
	i32 1813201214, ; 131: Xamarin.Google.Android.Material => 0x6c13413e => 129
	i32 1818569960, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 109
	i32 1819327070, ; 133: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 25
	i32 1828688058, ; 134: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 34
	i32 1867746548, ; 135: Xamarin.Essentials.dll => 0x6f538cf4 => 124
	i32 1878053835, ; 136: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 128
	i32 1885316902, ; 137: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 77
	i32 1904184254, ; 138: FastAndroidCamera => 0x717f8bbe => 6
	i32 1904755420, ; 139: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 3
	i32 1919157823, ; 140: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 106
	i32 1928288591, ; 141: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 20
	i32 1943021219, ; 142: SEALNet => 0x73d026a3 => 46
	i32 2011961780, ; 143: System.Buffers.dll => 0x77ec19b4 => 48
	i32 2019465201, ; 144: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 101
	i32 2055257422, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 98
	i32 2075706075, ; 146: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 20
	i32 2079903147, ; 147: System.Runtime.dll => 0x7bf8cdab => 59
	i32 2090596640, ; 148: System.Numerics.Vectors => 0x7c9bf920 => 56
	i32 2097448633, ; 149: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 94
	i32 2126786730, ; 150: Xamarin.Forms.Platform.Android => 0x7ec430aa => 126
	i32 2166116741, ; 151: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 67
	i32 2179096858, ; 152: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 22
	i32 2181898931, ; 153: Microsoft.Extensions.Options.dll => 0x820d22b3 => 36
	i32 2190344048, ; 154: GraphQL.Client.Abstractions.dll => 0x828dff70 => 8
	i32 2192057212, ; 155: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 34
	i32 2193016926, ; 156: System.ObjectModel.dll => 0x82b6c85e => 150
	i32 2201231467, ; 157: System.Net.Http => 0x8334206b => 53
	i32 2204417087, ; 158: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 35
	i32 2217644978, ; 159: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 118
	i32 2242871324, ; 160: Microsoft.AspNetCore.Http.dll => 0x85af801c => 23
	i32 2244775296, ; 161: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 104
	i32 2256548716, ; 162: Xamarin.AndroidX.MultiDex => 0x8680336c => 106
	i32 2261435625, ; 163: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 96
	i32 2266799131, ; 164: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 30
	i32 2278775545, ; 165: SEALMobile.Android => 0x87d35af9 => 0
	i32 2279755925, ; 166: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 112
	i32 2315684594, ; 167: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 72
	i32 2329204181, ; 168: zxing.portable.dll => 0x8ad4d5d5 => 134
	i32 2330457430, ; 169: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 66
	i32 2341995103, ; 170: ZXingNetMobile => 0x8b98025f => 135
	i32 2373288475, ; 171: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 68
	i32 2383496789, ; 172: System.Security.Principal.Windows.dll => 0x8e114655 => 60
	i32 2409053734, ; 173: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 110
	i32 2431243866, ; 174: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 131
	i32 2454642406, ; 175: System.Text.Encoding.dll => 0x924edee6 => 152
	i32 2465532216, ; 176: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 83
	i32 2471841756, ; 177: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 178: Java.Interop.dll => 0x93918882 => 13
	i32 2482213323, ; 179: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 132
	i32 2493473642, ; 180: Swan.Lite => 0x949f636a => 47
	i32 2501346920, ; 181: System.Data.DataSetExtensions => 0x95178668 => 138
	i32 2505896520, ; 182: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 100
	i32 2537015816, ; 183: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 15
	i32 2570120770, ; 184: System.Text.Encodings.Web => 0x9930ee42 => 61
	i32 2581819634, ; 185: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 119
	i32 2592341985, ; 186: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 32
	i32 2593268061, ; 187: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 26
	i32 2594125473, ; 188: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 18
	i32 2620871830, ; 189: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 87
	i32 2624644809, ; 190: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 91
	i32 2626566780, ; 191: SEALMobile.Android.dll => 0x9c8e3a7c => 0
	i32 2633051222, ; 192: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 99
	i32 2633959305, ; 193: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 24
	i32 2642291320, ; 194: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 54
	i32 2693849962, ; 195: System.IO.dll => 0xa090e36a => 153
	i32 2701096212, ; 196: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 116
	i32 2715334215, ; 197: System.Threading.Tasks.dll => 0xa1d8b647 => 2
	i32 2732626843, ; 198: Xamarin.AndroidX.Activity => 0xa2e0939b => 71
	i32 2735631878, ; 199: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 15
	i32 2737747696, ; 200: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 74
	i32 2766581644, ; 201: Xamarin.Forms.Core => 0xa4e6af8c => 125
	i32 2778768386, ; 202: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 121
	i32 2810250172, ; 203: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 85
	i32 2819470561, ; 204: System.Xml.dll => 0xa80db4e1 => 62
	i32 2850549256, ; 205: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 25
	i32 2853208004, ; 206: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 121
	i32 2855708567, ; 207: Xamarin.AndroidX.Transition => 0xaa36a797 => 117
	i32 2903344695, ; 208: System.ComponentModel.Composition => 0xad0d8637 => 142
	i32 2905242038, ; 209: mscorlib.dll => 0xad2a79b6 => 43
	i32 2916838712, ; 210: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 122
	i32 2919462931, ; 211: System.Numerics.Vectors.dll => 0xae037813 => 56
	i32 2921128767, ; 212: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 73
	i32 2968338931, ; 213: System.Security.Principal.Windows => 0xb0ed41f3 => 60
	i32 2978368250, ; 214: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 18
	i32 2978675010, ; 215: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 90
	i32 2996646946, ; 216: Microsoft.AspNetCore.Http => 0xb29d3422 => 23
	i32 2997658596, ; 217: MQTTnet.dll => 0xb2aca3e4 => 41
	i32 3024354802, ; 218: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 95
	i32 3036999524, ; 219: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 24
	i32 3044182254, ; 220: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 221: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 107
	i32 3075834255, ; 222: System.Threading.Tasks => 0xb755818f => 2
	i32 3089695929, ; 223: SEALMobile => 0xb82904b9 => 45
	i32 3092211740, ; 224: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 69
	i32 3111772706, ; 225: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3113762169, ; 226: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 26
	i32 3124832203, ; 227: System.Threading.Tasks.Extensions => 0xba4127cb => 145
	i32 3137972179, ; 228: SEALMobile.dll => 0xbb09a7d3 => 45
	i32 3180757527, ; 229: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 28
	i32 3204380047, ; 230: System.Data.dll => 0xbefef58f => 136
	i32 3211777861, ; 231: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 89
	i32 3220365878, ; 232: System.Threading => 0xbff2e236 => 151
	i32 3239786613, ; 233: GraphQL.Primitives.dll => 0xc11b3875 => 12
	i32 3247949154, ; 234: Mono.Security => 0xc197c562 => 146
	i32 3258312781, ; 235: Xamarin.AndroidX.CardView => 0xc235e84d => 80
	i32 3265893370, ; 236: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 145
	i32 3267021929, ; 237: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 78
	i32 3299363146, ; 238: System.Text.Encoding => 0xc4a8494a => 152
	i32 3300764913, ; 239: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 29
	i32 3317135071, ; 240: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 88
	i32 3317144872, ; 241: System.Data => 0xc5b79d28 => 136
	i32 3340431453, ; 242: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 77
	i32 3346324047, ; 243: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 108
	i32 3353484488, ; 244: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 94
	i32 3353544232, ; 245: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 123
	i32 3362522851, ; 246: Xamarin.AndroidX.Core => 0xc86c06e3 => 86
	i32 3366347497, ; 247: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 248: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 112
	i32 3395150330, ; 249: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 58
	i32 3404865022, ; 250: System.ServiceModel.Internals => 0xcaf21dfe => 144
	i32 3407215217, ; 251: Xamarin.CommunityToolkit => 0xcb15fa71 => 123
	i32 3429136800, ; 252: System.Xml => 0xcc6479a0 => 62
	i32 3430777524, ; 253: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 254: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 64
	i32 3441283291, ; 255: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 91
	i32 3470750172, ; 256: MQTTnet.AspNetCore => 0xcedf71dc => 40
	i32 3476120550, ; 257: Mono.Android => 0xcf3163e6 => 39
	i32 3486566296, ; 258: System.Transactions => 0xcfd0c798 => 137
	i32 3493954962, ; 259: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 82
	i32 3501239056, ; 260: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 78
	i32 3506786196, ; 261: MQTTnet.Extensions.ManagedClient => 0xd1054f94 => 42
	i32 3509114376, ; 262: System.Xml.Linq => 0xd128d608 => 63
	i32 3536029504, ; 263: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 126
	i32 3555617115, ; 264: GraphQL.Client.Serializer.Newtonsoft => 0xd3ee695b => 11
	i32 3567349600, ; 265: System.ComponentModel.Composition.dll => 0xd4a16f60 => 142
	i32 3594787188, ; 266: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 54
	i32 3618140916, ; 267: Xamarin.AndroidX.Preference => 0xd7a872f4 => 110
	i32 3627220390, ; 268: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 111
	i32 3632359727, ; 269: Xamarin.Forms.Platform => 0xd881692f => 127
	i32 3633644679, ; 270: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 73
	i32 3641597786, ; 271: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 98
	i32 3657292374, ; 272: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 30
	i32 3672681054, ; 273: Mono.Android.dll => 0xdae8aa5e => 39
	i32 3676310014, ; 274: System.Web.Services.dll => 0xdb2009fe => 143
	i32 3679340867, ; 275: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 22
	i32 3682565725, ; 276: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 79
	i32 3684561358, ; 277: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 82
	i32 3684933406, ; 278: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 3
	i32 3689375977, ; 279: System.Drawing.Common => 0xdbe768e9 => 139
	i32 3718780102, ; 280: Xamarin.AndroidX.Annotation => 0xdda814c6 => 72
	i32 3724971120, ; 281: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 107
	i32 3731644420, ; 282: System.Reactive => 0xde6c6004 => 57
	i32 3758932259, ; 283: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 96
	i32 3765508441, ; 284: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 35
	i32 3778408486, ; 285: GraphQL.Client.dll => 0xe135f026 => 10
	i32 3786282454, ; 286: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 81
	i32 3787005001, ; 287: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 17
	i32 3822602673, ; 288: Xamarin.AndroidX.Media => 0xe3d849b1 => 105
	i32 3829621856, ; 289: System.Numerics.dll => 0xe4436460 => 55
	i32 3841636137, ; 290: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 31
	i32 3847036339, ; 291: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 132
	i32 3885922214, ; 292: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 117
	i32 3896760992, ; 293: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 86
	i32 3920810846, ; 294: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 141
	i32 3921031405, ; 295: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 120
	i32 3931092270, ; 296: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 109
	i32 3945713374, ; 297: System.Data.DataSetExtensions.dll => 0xeb2ecede => 138
	i32 3955647286, ; 298: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 75
	i32 4023392905, ; 299: System.IO.Pipelines => 0xefd01a89 => 51
	i32 4025784931, ; 300: System.Memory => 0xeff49a63 => 52
	i32 4044155772, ; 301: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 38
	i32 4073602200, ; 302: System.Threading.dll => 0xf2ce3c98 => 151
	i32 4078967171, ; 303: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 33
	i32 4105002889, ; 304: Mono.Security.dll => 0xf4ad5f89 => 146
	i32 4141580284, ; 305: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 16
	i32 4151237749, ; 306: System.Core => 0xf76edc75 => 49
	i32 4182413190, ; 307: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 102
	i32 4186595366, ; 308: ZXing.Net.Mobile.Core => 0xf98a6026 => 131
	i32 4243570370, ; 309: GraphQL.Client.Abstractions.Websocket => 0xfcefbec2 => 9
	i32 4260525087, ; 310: System.Buffers => 0xfdf2741f => 48
	i32 4292120959 ; 311: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 102
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 100, i32 130, i32 44, i32 125, i32 114, i32 114, i32 81, i32 65, ; 0..7
	i32 6, i32 29, i32 115, i32 79, i32 70, i32 149, i32 95, i32 155, ; 8..15
	i32 143, i32 84, i32 99, i32 93, i32 14, i32 71, i32 55, i32 133, ; 16..23
	i32 97, i32 21, i32 27, i32 52, i32 66, i32 28, i32 83, i32 124, ; 24..31
	i32 147, i32 92, i32 43, i32 50, i32 93, i32 41, i32 12, i32 104, ; 32..39
	i32 19, i32 150, i32 37, i32 65, i32 137, i32 148, i32 141, i32 57, ; 40..47
	i32 42, i32 88, i32 61, i32 120, i32 76, i32 63, i32 64, i32 16, ; 48..55
	i32 5, i32 140, i32 36, i32 139, i32 111, i32 155, i32 70, i32 9, ; 56..63
	i32 130, i32 133, i32 44, i32 69, i32 97, i32 7, i32 147, i32 113, ; 64..71
	i32 31, i32 75, i32 127, i32 101, i32 21, i32 50, i32 40, i32 33, ; 72..79
	i32 14, i32 135, i32 32, i32 118, i32 108, i32 76, i32 38, i32 19, ; 80..87
	i32 5, i32 119, i32 27, i32 46, i32 47, i32 90, i32 153, i32 144, ; 88..95
	i32 113, i32 8, i32 105, i32 85, i32 58, i32 17, i32 68, i32 148, ; 96..103
	i32 128, i32 140, i32 74, i32 37, i32 10, i32 154, i32 134, i32 67, ; 104..111
	i32 89, i32 4, i32 11, i32 103, i32 122, i32 87, i32 53, i32 154, ; 112..119
	i32 59, i32 116, i32 129, i32 84, i32 149, i32 80, i32 51, i32 115, ; 120..127
	i32 49, i32 92, i32 103, i32 129, i32 109, i32 25, i32 34, i32 124, ; 128..135
	i32 128, i32 77, i32 6, i32 3, i32 106, i32 20, i32 46, i32 48, ; 136..143
	i32 101, i32 98, i32 20, i32 59, i32 56, i32 94, i32 126, i32 67, ; 144..151
	i32 22, i32 36, i32 8, i32 34, i32 150, i32 53, i32 35, i32 118, ; 152..159
	i32 23, i32 104, i32 106, i32 96, i32 30, i32 0, i32 112, i32 72, ; 160..167
	i32 134, i32 66, i32 135, i32 68, i32 60, i32 110, i32 131, i32 152, ; 168..175
	i32 83, i32 1, i32 13, i32 132, i32 47, i32 138, i32 100, i32 15, ; 176..183
	i32 61, i32 119, i32 32, i32 26, i32 18, i32 87, i32 91, i32 0, ; 184..191
	i32 99, i32 24, i32 54, i32 153, i32 116, i32 2, i32 71, i32 15, ; 192..199
	i32 74, i32 125, i32 121, i32 85, i32 62, i32 25, i32 121, i32 117, ; 200..207
	i32 142, i32 43, i32 122, i32 56, i32 73, i32 60, i32 18, i32 90, ; 208..215
	i32 23, i32 41, i32 95, i32 24, i32 7, i32 107, i32 2, i32 45, ; 216..223
	i32 69, i32 4, i32 26, i32 145, i32 45, i32 28, i32 136, i32 89, ; 224..231
	i32 151, i32 12, i32 146, i32 80, i32 145, i32 78, i32 152, i32 29, ; 232..239
	i32 88, i32 136, i32 77, i32 108, i32 94, i32 123, i32 86, i32 13, ; 240..247
	i32 112, i32 58, i32 144, i32 123, i32 62, i32 1, i32 64, i32 91, ; 248..255
	i32 40, i32 39, i32 137, i32 82, i32 78, i32 42, i32 63, i32 126, ; 256..263
	i32 11, i32 142, i32 54, i32 110, i32 111, i32 127, i32 73, i32 98, ; 264..271
	i32 30, i32 39, i32 143, i32 22, i32 79, i32 82, i32 3, i32 139, ; 272..279
	i32 72, i32 107, i32 57, i32 96, i32 35, i32 10, i32 81, i32 17, ; 280..287
	i32 105, i32 55, i32 31, i32 132, i32 117, i32 86, i32 141, i32 120, ; 288..295
	i32 109, i32 138, i32 75, i32 51, i32 52, i32 38, i32 151, i32 33, ; 296..303
	i32 146, i32 16, i32 49, i32 102, i32 131, i32 9, i32 48, i32 102 ; 312..311
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
