; ModuleID = 'obj\Release\110\android\compressed_assemblies.x86.ll'
source_filename = "obj\Release\110\android\compressed_assemblies.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [354816 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [11264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [14336 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [21504 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [54784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [166912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [43008 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [301056 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [11264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [30720 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [24064 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [66560 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [96768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [29696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [23040 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [72704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [31744 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [190976 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [57344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [10752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [27648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [13824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [38400 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [9728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [33792 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [26624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [2447360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [128000 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [690176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [553472 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [3632640 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [69632 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [192000 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [14752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [549888 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [747520 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [77824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [32256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [219648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [41984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [39936 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [1435648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [5632 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [419328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [55808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [44544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [15264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [26624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [1397760 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [1027584 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [509952 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [79360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [587776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [25088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_72 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_73 = internal global [175104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_74 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_75 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_76 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_77 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_78 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_79 = internal global [424448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_80 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_81 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_82 = internal global [57856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_83 = internal global [482304 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_84 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_85 = internal global [1209344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_86 = internal global [961536 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_87 = internal global [264096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_88 = internal global [103424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_89 = internal global [258048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_90 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_91 = internal global [12800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_92 = internal global [10240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_93 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_94 = internal global [41984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_95 = internal global [2175488 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_96 = internal global [446976 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [97 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 354816, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([354816 x i8], [354816 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11264 x i8], [11264 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14336 x i8], [14336 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([21504 x i8], [21504 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 54784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([54784 x i8], [54784 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 166912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([166912 x i8], [166912 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 43008, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([43008 x i8], [43008 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 301056, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([301056 x i8], [301056 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11264 x i8], [11264 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 30720, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([30720 x i8], [30720 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 24064, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24064 x i8], [24064 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 66560, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([66560 x i8], [66560 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 96768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([96768 x i8], [96768 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29696 x i8], [29696 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 23040, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([23040 x i8], [23040 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 72704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([72704 x i8], [72704 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 31744, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([31744 x i8], [31744 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 190976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([190976 x i8], [190976 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 57344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57344 x i8], [57344 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10752 x i8], [10752 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 27648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([27648 x i8], [27648 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13824 x i8], [13824 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 38400, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38400 x i8], [38400 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9728 x i8], [9728 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 33792, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33792 x i8], [33792 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26624 x i8], [26624 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 2447360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2447360 x i8], [2447360 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 128000, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([128000 x i8], [128000 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 690176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690176 x i8], [690176 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 553472, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([553472 x i8], [553472 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 3632640, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([3632640 x i8], [3632640 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 69632, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([69632 x i8], [69632 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 192000, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([192000 x i8], [192000 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 14752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14752 x i8], [14752 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 549888, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([549888 x i8], [549888 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 747520, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([747520 x i8], [747520 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 77824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([77824 x i8], [77824 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32256 x i8], [32256 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 219648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([219648 x i8], [219648 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([41984 x i8], [41984 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 39936, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([39936 x i8], [39936 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 1435648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1435648 x i8], [1435648 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 419328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([419328 x i8], [419328 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55808 x i8], [55808 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 44544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44544 x i8], [44544 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 15264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15264 x i8], [15264 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26624 x i8], [26624 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 1397760, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1397760 x i8], [1397760 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 1027584, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1027584 x i8], [1027584 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 509952, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([509952 x i8], [509952 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 79360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79360 x i8], [79360 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 587776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([587776 x i8], [587776 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 25088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([25088 x i8], [25088 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}, 
	; 72
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_72, i32 0, i32 0); data
	}, 
	; 73
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175104 x i8], [175104 x i8]* @__CompressedAssemblyDescriptor_data_73, i32 0, i32 0); data
	}, 
	; 74
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_74, i32 0, i32 0); data
	}, 
	; 75
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_75, i32 0, i32 0); data
	}, 
	; 76
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_76, i32 0, i32 0); data
	}, 
	; 77
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_77, i32 0, i32 0); data
	}, 
	; 78
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_78, i32 0, i32 0); data
	}, 
	; 79
	%struct.CompressedAssemblyDescriptor {
		i32 424448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([424448 x i8], [424448 x i8]* @__CompressedAssemblyDescriptor_data_79, i32 0, i32 0); data
	}, 
	; 80
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_80, i32 0, i32 0); data
	}, 
	; 81
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_81, i32 0, i32 0); data
	}, 
	; 82
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57856 x i8], [57856 x i8]* @__CompressedAssemblyDescriptor_data_82, i32 0, i32 0); data
	}, 
	; 83
	%struct.CompressedAssemblyDescriptor {
		i32 482304, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([482304 x i8], [482304 x i8]* @__CompressedAssemblyDescriptor_data_83, i32 0, i32 0); data
	}, 
	; 84
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_84, i32 0, i32 0); data
	}, 
	; 85
	%struct.CompressedAssemblyDescriptor {
		i32 1209344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1209344 x i8], [1209344 x i8]* @__CompressedAssemblyDescriptor_data_85, i32 0, i32 0); data
	}, 
	; 86
	%struct.CompressedAssemblyDescriptor {
		i32 961536, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([961536 x i8], [961536 x i8]* @__CompressedAssemblyDescriptor_data_86, i32 0, i32 0); data
	}, 
	; 87
	%struct.CompressedAssemblyDescriptor {
		i32 264096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([264096 x i8], [264096 x i8]* @__CompressedAssemblyDescriptor_data_87, i32 0, i32 0); data
	}, 
	; 88
	%struct.CompressedAssemblyDescriptor {
		i32 103424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([103424 x i8], [103424 x i8]* @__CompressedAssemblyDescriptor_data_88, i32 0, i32 0); data
	}, 
	; 89
	%struct.CompressedAssemblyDescriptor {
		i32 258048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([258048 x i8], [258048 x i8]* @__CompressedAssemblyDescriptor_data_89, i32 0, i32 0); data
	}, 
	; 90
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_90, i32 0, i32 0); data
	}, 
	; 91
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @__CompressedAssemblyDescriptor_data_91, i32 0, i32 0); data
	}, 
	; 92
	%struct.CompressedAssemblyDescriptor {
		i32 10240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @__CompressedAssemblyDescriptor_data_92, i32 0, i32 0); data
	}, 
	; 93
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_93, i32 0, i32 0); data
	}, 
	; 94
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([41984 x i8], [41984 x i8]* @__CompressedAssemblyDescriptor_data_94, i32 0, i32 0); data
	}, 
	; 95
	%struct.CompressedAssemblyDescriptor {
		i32 2175488, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2175488 x i8], [2175488 x i8]* @__CompressedAssemblyDescriptor_data_95, i32 0, i32 0); data
	}, 
	; 96
	%struct.CompressedAssemblyDescriptor {
		i32 446976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([446976 x i8], [446976 x i8]* @__CompressedAssemblyDescriptor_data_96, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 97, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([97 x %struct.CompressedAssemblyDescriptor], [97 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
