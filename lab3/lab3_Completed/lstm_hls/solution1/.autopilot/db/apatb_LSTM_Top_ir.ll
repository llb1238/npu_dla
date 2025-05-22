; ModuleID = '/home/llb/college/dla/npu_dla/lab3_student/lstm_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_LSTM_Top_ir(%"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* noalias nonnull "fpga.decayed.dim.hint"="784" %in, %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* noalias nonnull "fpga.decayed.dim.hint"="10" %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* %in to [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*
  %1 = call i8* @malloc(i64 9408)
  %in_copy = bitcast i8* %1 to [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*
  %2 = bitcast %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* %out to [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*
  %out_copy = alloca [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], align 512
  call fastcc void @copy_in([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %0, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %in_copy, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %2, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull align 512 %out_copy)
  call void @apatb_LSTM_Top_hw([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %in_copy, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %out_copy)
  call void @copy_back([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %in_copy, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %2, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %out_copy)
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* align 512 %3, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, null
  %1 = icmp eq [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %dst, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %src, i64 784)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, null
  %1 = icmp eq [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond57 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond57, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx58 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.0.07, align 4
  store i32 %3, i32* %dst.addr.0.0.0.08, align 4
  %src.addr.1.0.0.015 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 1, i32 0, i32 0, i32 0
  %4 = bitcast i4* %src.addr.1.0.0.015 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i4
  store i4 %6, i4* %dst.addr.1.0.0.016, align 1
  %src.addr.2.0.0.023 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 2, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 2, i32 0, i32 0, i32 0
  %7 = bitcast i4* %src.addr.2.0.0.023 to i8*
  %8 = load i8, i8* %7
  %9 = trunc i8 %8 to i4
  store i4 %9, i4* %dst.addr.2.0.0.024, align 1
  %src.addr.3.0.0.031 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 3, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 3, i32 0, i32 0, i32 0
  %10 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %11 = load i8, i8* %10
  %12 = trunc i8 %11 to i1
  store i1 %12, i1* %dst.addr.3.0.0.032, align 1
  %src.addr.4.0.0.039 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 4, i32 0, i32 0, i32 0
  %dst.addr.4.0.0.040 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 4, i32 0, i32 0, i32 0
  %13 = bitcast i1* %src.addr.4.0.0.039 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i1
  store i1 %15, i1* %dst.addr.4.0.0.040, align 1
  %src.addr.5.0.0.047 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 5, i32 0, i32 0, i32 0
  %dst.addr.5.0.0.048 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 5, i32 0, i32 0, i32 0
  %16 = bitcast i1* %src.addr.5.0.0.047 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i1
  store i1 %18, i1* %dst.addr.5.0.0.048, align 1
  %src.addr.6.0.0.055 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 6, i32 0, i32 0, i32 0
  %dst.addr.6.0.0.056 = getelementptr [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 6, i32 0, i32 0, i32 0
  %19 = bitcast i1* %src.addr.6.0.0.055 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  store i1 %21, i1* %dst.addr.6.0.0.056, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx58, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* align 512 %dst, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, null
  %1 = icmp eq [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %dst, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, null
  %1 = icmp eq [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond57 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond57, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx58 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.0.07, align 4
  store i32 %3, i32* %dst.addr.0.0.0.08, align 4
  %src.addr.1.0.0.015 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 1, i32 0, i32 0, i32 0
  %4 = bitcast i4* %src.addr.1.0.0.015 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i4
  store i4 %6, i4* %dst.addr.1.0.0.016, align 1
  %src.addr.2.0.0.023 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 2, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 2, i32 0, i32 0, i32 0
  %7 = bitcast i4* %src.addr.2.0.0.023 to i8*
  %8 = load i8, i8* %7
  %9 = trunc i8 %8 to i4
  store i4 %9, i4* %dst.addr.2.0.0.024, align 1
  %src.addr.3.0.0.031 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 3, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 3, i32 0, i32 0, i32 0
  %10 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %11 = load i8, i8* %10
  %12 = trunc i8 %11 to i1
  store i1 %12, i1* %dst.addr.3.0.0.032, align 1
  %src.addr.4.0.0.039 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 4, i32 0, i32 0, i32 0
  %dst.addr.4.0.0.040 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 4, i32 0, i32 0, i32 0
  %13 = bitcast i1* %src.addr.4.0.0.039 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i1
  store i1 %15, i1* %dst.addr.4.0.0.040, align 1
  %src.addr.5.0.0.047 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 5, i32 0, i32 0, i32 0
  %dst.addr.5.0.0.048 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 5, i32 0, i32 0, i32 0
  %16 = bitcast i1* %src.addr.5.0.0.047 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i1
  store i1 %18, i1* %dst.addr.5.0.0.048, align 1
  %src.addr.6.0.0.055 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %src, i64 0, i64 %for.loop.idx58, i32 6, i32 0, i32 0, i32 0
  %dst.addr.6.0.0.056 = getelementptr [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"], [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %dst, i64 0, i64 %for.loop.idx58, i32 6, i32 0, i32 0, i32 0
  %19 = bitcast i1* %src.addr.6.0.0.055 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  store i1 %21, i1* %dst.addr.6.0.0.056, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx58, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %2, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* align 512 %3)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_LSTM_Top_hw([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a784struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0a10struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"([10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %2, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* align 512 %3)
  ret void
}

declare void @LSTM_Top_hw_stub(%"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* noalias nonnull, %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* noalias nonnull)

define void @LSTM_Top_hw_stub_wrapper([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]*) #5 {
entry:
  call void @copy_out([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* null, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* null, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1)
  %2 = bitcast [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0 to %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"*
  %3 = bitcast [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1 to %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"*
  call void @LSTM_Top_hw_stub(%"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* %2, %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"* %3)
  call void @copy_in([784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* null, [784 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %0, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* null, [10 x %"struct.hls::axis<ap_uint<32>, 1, 1, 1, '8', false>"]* %1)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
