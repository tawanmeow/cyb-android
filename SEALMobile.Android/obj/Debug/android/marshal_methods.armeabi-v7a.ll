; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [208 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 96
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 80
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 92
	i32 166922606, ; 3: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 13
	i32 172012715, ; 4: FastAndroidCamera.dll => 0xa40b4ab => 45
	i32 176714968, ; 5: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 67
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 34
	i32 219130465, ; 7: Xamarin.Android.Support.v4 => 0xd0faa61 => 18
	i32 232815796, ; 8: System.Web.Services => 0xde07cb4 => 40
	i32 300686228, ; 9: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 52
	i32 318968648, ; 10: Xamarin.AndroidX.Activity.dll => 0x13031348 => 88
	i32 321597661, ; 11: System.Numerics => 0x132b30dd => 8
	i32 334355562, ; 12: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 99
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 29
	i32 348048101, ; 14: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 59
	i32 384051609, ; 15: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 65
	i32 389971796, ; 16: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 14
	i32 417611542, ; 17: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 66
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 91
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 27
	i32 465846621, ; 20: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 21: System.dll => 0x1bff388e => 6
	i32 478296930, ; 22: MQTTnet => 0x1c823b62 => 78
	i32 481696718, ; 23: GraphQL.Primitives => 0x1cb61bce => 51
	i32 490002678, ; 24: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 57
	i32 513247710, ; 25: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 75
	i32 514659665, ; 26: Xamarin.Android.Support.Compat => 0x1ead1551 => 13
	i32 610194910, ; 27: System.Reactive.dll => 0x245ed5de => 85
	i32 620237444, ; 28: MQTTnet.Extensions.ManagedClient.dll => 0x24f81284 => 79
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 25
	i32 662205335, ; 30: System.Text.Encodings.Web.dll => 0x27787397 => 87
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 692692150, ; 32: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 12
	i32 724146010, ; 33: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 54
	i32 742762115, ; 34: EmbedIO.dll => 0x2c45a683 => 44
	i32 775507847, ; 35: System.IO.Compression => 0x2e394f87 => 39
	i32 789151979, ; 36: Microsoft.Extensions.Options => 0x2f0980eb => 74
	i32 809851609, ; 37: System.Drawing.Common.dll => 0x30455ad9 => 38
	i32 882883187, ; 38: Xamarin.Android.Support.v4.dll => 0x349fba73 => 18
	i32 905495016, ; 39: GraphQL.Client.Abstractions.Websocket.dll => 0x35f8c1e8 => 48
	i32 928116545, ; 40: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 96
	i32 954320159, ; 41: ZXing.Net.Mobile.Forms => 0x38e1c51f => 99
	i32 955402788, ; 42: Newtonsoft.Json => 0x38f24a24 => 80
	i32 958213972, ; 43: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 17
	i32 967690846, ; 44: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 29
	i32 974778368, ; 45: FormsViewGroup.dll => 0x3a19f000 => 46
	i32 1012816738, ; 46: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 89
	i32 1028951442, ; 47: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 69
	i32 1035644815, ; 48: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 20
	i32 1042160112, ; 49: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 94
	i32 1052210849, ; 50: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 31
	i32 1058641855, ; 51: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 59
	i32 1098259244, ; 52: System => 0x41761b2c => 6
	i32 1104876031, ; 53: MQTTnet.AspNetCore.dll => 0x41db11ff => 77
	i32 1110309514, ; 54: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 71
	i32 1112354281, ; 55: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 52
	i32 1134191450, ; 56: ZXingNetMobile.dll => 0x439a635a => 101
	i32 1173126369, ; 57: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 70
	i32 1220193633, ; 58: Microsoft.Net.Http.Headers => 0x48baad61 => 76
	i32 1236289705, ; 59: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 57
	i32 1251725941, ; 60: EmbedIO => 0x4a9bd275 => 44
	i32 1267908789, ; 61: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 65
	i32 1279824341, ; 62: SEALNet.dll => 0x4c4891d5 => 81
	i32 1281496230, ; 63: Swan.Lite.dll => 0x4c6214a6 => 82
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 26
	i32 1365406463, ; 65: System.ServiceModel.Internals.dll => 0x516272ff => 41
	i32 1376866003, ; 66: Xamarin.AndroidX.SavedState => 0x52114ed3 => 89
	i32 1390332905, ; 67: GraphQL.Client.Abstractions => 0x52decbe9 => 47
	i32 1406073936, ; 68: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 22
	i32 1411638395, ; 69: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1414043276, ; 70: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 55
	i32 1445445088, ; 71: Xamarin.Android.Support.Fragment => 0x5627bde0 => 16
	i32 1460219004, ; 72: Xamarin.Forms.Xaml => 0x57092c7c => 95
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 39
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 19
	i32 1470490898, ; 75: Microsoft.Extensions.Primitives => 0x57a5e912 => 75
	i32 1510416510, ; 76: GraphQL.Client => 0x5a07207e => 49
	i32 1571005899, ; 77: zxing.portable => 0x5da3a5cb => 100
	i32 1574652163, ; 78: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 15
	i32 1592978981, ; 79: System.Runtime.Serialization.dll => 0x5ef2ee25 => 0
	i32 1621546273, ; 80: GraphQL.Client.Serializer.Newtonsoft.dll => 0x60a6d521 => 50
	i32 1622152042, ; 81: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 32
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 24
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 7
	i32 1658251792, ; 84: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 36
	i32 1729485958, ; 85: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 21
	i32 1746115085, ; 86: System.IO.Pipelines.dll => 0x68139a0d => 83
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 34
	i32 1776026572, ; 88: System.Core.dll => 0x69dc03cc => 5
	i32 1788241197, ; 89: Xamarin.AndroidX.Fragment => 0x6a96652d => 27
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 32
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 36
	i32 1819327070, ; 92: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 63
	i32 1828688058, ; 93: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 72
	i32 1867746548, ; 94: Xamarin.Essentials.dll => 0x6f538cf4 => 91
	i32 1878053835, ; 95: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 95
	i32 1904184254, ; 96: FastAndroidCamera => 0x717f8bbe => 45
	i32 1928288591, ; 97: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 58
	i32 1943021219, ; 98: SEALNet => 0x73d026a3 => 81
	i32 2011961780, ; 99: System.Buffers.dll => 0x77ec19b4 => 4
	i32 2019465201, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 31
	i32 2055257422, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 30
	i32 2075706075, ; 102: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 58
	i32 2097448633, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 28
	i32 2126786730, ; 104: Xamarin.Forms.Platform.Android => 0x7ec430aa => 93
	i32 2166116741, ; 105: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 15
	i32 2179096858, ; 106: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 60
	i32 2181898931, ; 107: Microsoft.Extensions.Options.dll => 0x820d22b3 => 74
	i32 2190344048, ; 108: GraphQL.Client.Abstractions.dll => 0x828dff70 => 47
	i32 2192057212, ; 109: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 72
	i32 2201231467, ; 110: System.Net.Http => 0x8334206b => 7
	i32 2204417087, ; 111: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 73
	i32 2242871324, ; 112: Microsoft.AspNetCore.Http.dll => 0x85af801c => 61
	i32 2266799131, ; 113: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 68
	i32 2278775545, ; 114: SEALMobile.Android => 0x87d35af9 => 102
	i32 2279755925, ; 115: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 33
	i32 2329204181, ; 116: zxing.portable.dll => 0x8ad4d5d5 => 100
	i32 2330457430, ; 117: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 14
	i32 2341995103, ; 118: ZXingNetMobile => 0x8b98025f => 101
	i32 2373288475, ; 119: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 16
	i32 2383496789, ; 120: System.Security.Principal.Windows.dll => 0x8e114655 => 86
	i32 2431243866, ; 121: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 97
	i32 2475788418, ; 122: Java.Interop.dll => 0x93918882 => 1
	i32 2482213323, ; 123: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 98
	i32 2493473642, ; 124: Swan.Lite => 0x949f636a => 82
	i32 2537015816, ; 125: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 53
	i32 2570120770, ; 126: System.Text.Encodings.Web => 0x9930ee42 => 87
	i32 2592341985, ; 127: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 70
	i32 2593268061, ; 128: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 64
	i32 2594125473, ; 129: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 56
	i32 2620871830, ; 130: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 24
	i32 2626566780, ; 131: SEALMobile.Android.dll => 0x9c8e3a7c => 102
	i32 2633959305, ; 132: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 62
	i32 2642291320, ; 133: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 84
	i32 2732626843, ; 134: Xamarin.AndroidX.Activity => 0xa2e0939b => 88
	i32 2735631878, ; 135: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 53
	i32 2737747696, ; 136: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 19
	i32 2766581644, ; 137: Xamarin.Forms.Core => 0xa4e6af8c => 92
	i32 2778768386, ; 138: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 35
	i32 2810250172, ; 139: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 22
	i32 2819470561, ; 140: System.Xml.dll => 0xa80db4e1 => 10
	i32 2850549256, ; 141: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 63
	i32 2853208004, ; 142: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 35
	i32 2905242038, ; 143: mscorlib.dll => 0xad2a79b6 => 3
	i32 2968338931, ; 144: System.Security.Principal.Windows => 0xb0ed41f3 => 86
	i32 2978368250, ; 145: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 56
	i32 2978675010, ; 146: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 26
	i32 2996646946, ; 147: Microsoft.AspNetCore.Http => 0xb29d3422 => 61
	i32 2997658596, ; 148: MQTTnet.dll => 0xb2aca3e4 => 78
	i32 3036999524, ; 149: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 62
	i32 3044182254, ; 150: FormsViewGroup => 0xb57288ee => 46
	i32 3089695929, ; 151: SEALMobile => 0xb82904b9 => 103
	i32 3092211740, ; 152: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 17
	i32 3111772706, ; 153: System.Runtime.Serialization => 0xb979e222 => 0
	i32 3113762169, ; 154: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 64
	i32 3124832203, ; 155: System.Threading.Tasks.Extensions => 0xba4127cb => 42
	i32 3137972179, ; 156: SEALMobile.dll => 0xbb09a7d3 => 103
	i32 3180757527, ; 157: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 66
	i32 3204380047, ; 158: System.Data.dll => 0xbefef58f => 37
	i32 3239786613, ; 159: GraphQL.Primitives.dll => 0xc11b3875 => 51
	i32 3247949154, ; 160: Mono.Security => 0xc197c562 => 43
	i32 3258312781, ; 161: Xamarin.AndroidX.CardView => 0xc235e84d => 21
	i32 3265893370, ; 162: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 42
	i32 3300764913, ; 163: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 67
	i32 3317135071, ; 164: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 25
	i32 3317144872, ; 165: System.Data => 0xc5b79d28 => 37
	i32 3353484488, ; 166: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 28
	i32 3353544232, ; 167: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 90
	i32 3362522851, ; 168: Xamarin.AndroidX.Core => 0xc86c06e3 => 23
	i32 3366347497, ; 169: Java.Interop => 0xc8a662e9 => 1
	i32 3374999561, ; 170: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 33
	i32 3395150330, ; 171: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 172: System.ServiceModel.Internals => 0xcaf21dfe => 41
	i32 3407215217, ; 173: Xamarin.CommunityToolkit => 0xcb15fa71 => 90
	i32 3429136800, ; 174: System.Xml => 0xcc6479a0 => 10
	i32 3439690031, ; 175: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 12
	i32 3470750172, ; 176: MQTTnet.AspNetCore => 0xcedf71dc => 77
	i32 3476120550, ; 177: Mono.Android => 0xcf3163e6 => 2
	i32 3506786196, ; 178: MQTTnet.Extensions.ManagedClient => 0xd1054f94 => 79
	i32 3509114376, ; 179: System.Xml.Linq => 0xd128d608 => 11
	i32 3536029504, ; 180: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 93
	i32 3555617115, ; 181: GraphQL.Client.Serializer.Newtonsoft => 0xd3ee695b => 50
	i32 3594787188, ; 182: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 84
	i32 3632359727, ; 183: Xamarin.Forms.Platform => 0xd881692f => 94
	i32 3641597786, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 30
	i32 3657292374, ; 185: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 68
	i32 3672681054, ; 186: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3676310014, ; 187: System.Web.Services.dll => 0xdb2009fe => 40
	i32 3679340867, ; 188: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 60
	i32 3689375977, ; 189: System.Drawing.Common => 0xdbe768e9 => 38
	i32 3731644420, ; 190: System.Reactive => 0xde6c6004 => 85
	i32 3765508441, ; 191: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 73
	i32 3778408486, ; 192: GraphQL.Client.dll => 0xe135f026 => 49
	i32 3787005001, ; 193: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 55
	i32 3829621856, ; 194: System.Numerics.dll => 0xe4436460 => 8
	i32 3841636137, ; 195: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 69
	i32 3847036339, ; 196: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 98
	i32 3896760992, ; 197: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 23
	i32 3955647286, ; 198: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 20
	i32 4023392905, ; 199: System.IO.Pipelines => 0xefd01a89 => 83
	i32 4044155772, ; 200: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 76
	i32 4078967171, ; 201: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 71
	i32 4105002889, ; 202: Mono.Security.dll => 0xf4ad5f89 => 43
	i32 4141580284, ; 203: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 54
	i32 4151237749, ; 204: System.Core => 0xf76edc75 => 5
	i32 4186595366, ; 205: ZXing.Net.Mobile.Core => 0xf98a6026 => 97
	i32 4243570370, ; 206: GraphQL.Client.Abstractions.Websocket => 0xfcefbec2 => 48
	i32 4260525087 ; 207: System.Buffers => 0xfdf2741f => 4
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [208 x i32] [
	i32 96, i32 80, i32 92, i32 13, i32 45, i32 67, i32 34, i32 18, ; 0..7
	i32 40, i32 52, i32 88, i32 8, i32 99, i32 29, i32 59, i32 65, ; 8..15
	i32 14, i32 66, i32 91, i32 27, i32 3, i32 6, i32 78, i32 51, ; 16..23
	i32 57, i32 75, i32 13, i32 85, i32 79, i32 25, i32 87, i32 11, ; 24..31
	i32 12, i32 54, i32 44, i32 39, i32 74, i32 38, i32 18, i32 48, ; 32..39
	i32 96, i32 99, i32 80, i32 17, i32 29, i32 46, i32 89, i32 69, ; 40..47
	i32 20, i32 94, i32 31, i32 59, i32 6, i32 77, i32 71, i32 52, ; 48..55
	i32 101, i32 70, i32 76, i32 57, i32 44, i32 65, i32 81, i32 82, ; 56..63
	i32 26, i32 41, i32 89, i32 47, i32 22, i32 9, i32 55, i32 16, ; 64..71
	i32 95, i32 39, i32 19, i32 75, i32 49, i32 100, i32 15, i32 0, ; 72..79
	i32 50, i32 32, i32 24, i32 7, i32 36, i32 21, i32 83, i32 34, ; 80..87
	i32 5, i32 27, i32 32, i32 36, i32 63, i32 72, i32 91, i32 95, ; 88..95
	i32 45, i32 58, i32 81, i32 4, i32 31, i32 30, i32 58, i32 28, ; 96..103
	i32 93, i32 15, i32 60, i32 74, i32 47, i32 72, i32 7, i32 73, ; 104..111
	i32 61, i32 68, i32 102, i32 33, i32 100, i32 14, i32 101, i32 16, ; 112..119
	i32 86, i32 97, i32 1, i32 98, i32 82, i32 53, i32 87, i32 70, ; 120..127
	i32 64, i32 56, i32 24, i32 102, i32 62, i32 84, i32 88, i32 53, ; 128..135
	i32 19, i32 92, i32 35, i32 22, i32 10, i32 63, i32 35, i32 3, ; 136..143
	i32 86, i32 56, i32 26, i32 61, i32 78, i32 62, i32 46, i32 103, ; 144..151
	i32 17, i32 0, i32 64, i32 42, i32 103, i32 66, i32 37, i32 51, ; 152..159
	i32 43, i32 21, i32 42, i32 67, i32 25, i32 37, i32 28, i32 90, ; 160..167
	i32 23, i32 1, i32 33, i32 9, i32 41, i32 90, i32 10, i32 12, ; 168..175
	i32 77, i32 2, i32 79, i32 11, i32 93, i32 50, i32 84, i32 94, ; 176..183
	i32 30, i32 68, i32 2, i32 40, i32 60, i32 38, i32 85, i32 73, ; 184..191
	i32 49, i32 55, i32 8, i32 69, i32 98, i32 23, i32 20, i32 83, ; 192..199
	i32 76, i32 71, i32 43, i32 54, i32 5, i32 97, i32 48, i32 4 ; 208..207
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
