#map0 = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (1200, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0, d1) -> (1199, d0 * 32 + 32, d1 * 32 + 31)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map5 = affine_map<(d0) -> (0, (d0 * 32 - 1399) ceildiv 32)>
#map6 = affine_map<(d0) -> (38, d0 + 1)>
#map7 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 32)>
#map8 = affine_map<(d0, d1) -> (1400, d0 * 32 - d1 * 32 + 32)>
#map9 = affine_map<(d0) -> (1199, d0 * 32 + 32)>
#map10 = affine_map<(d0) -> (1400, d0 * 32 + 32)>
#map11 = affine_map<(d0) -> (1400, 1200, d0 * 32 + 32)>
#map12 = affine_map<()[s0] -> (s0 - 1)>
#map13 = affine_map<(d0) -> (d0 + 1)>
#map14 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>
#map15 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#map16 = affine_map<()[s0] -> ((s0 - 2) floordiv 32 + 1)>
#map17 = affine_map<(d0, d1)[s0] -> (s0 - 1, d0 * 32 + 32, d1 * 32 + 31)>
#map18 = affine_map<()[s0, s1] -> ((s0 + s1 - 3) floordiv 32 + 1)>
#map19 = affine_map<(d0)[s0] -> (0, (d0 * 32 - s0 + 1) ceildiv 32)>
#map20 = affine_map<(d0)[s0] -> ((s0 - 2) floordiv 32 + 1, d0 + 1)>
#map21 = affine_map<(d0, d1)[s0] -> (s0, d0 * 32 - d1 * 32 + 32)>
#map22 = affine_map<(d0)[s0] -> (s0 - 1, d0 * 32 + 32)>
#map23 = affine_map<()[s0, s1] -> ((s0 - 1) floordiv 32 + 1, (s1 - 1) floordiv 32 + 1)>
#map24 = affine_map<(d0)[s0, s1] -> (s0, s1, d0 * 32 + 32)>
#map25 = affine_map<()[s0] -> (s0 ceildiv 32)>
#set0 = affine_set<(d0) : (d0 - 37 >= 0)>
#set1 = affine_set<() : (15 == 0)>
#set2 = affine_set<(d0)[s0] : (d0 - (s0 - 32) ceildiv 32 >= 0)>
#set3 = affine_set<()[s0] : ((s0 + 31) mod 32 == 0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str9("%0.6f\0A\00")
  global_memref "private" @polybench_t_end : memref<1xf64>
  llvm.mlir.global internal constant @str8("Error return from gettimeofday: %d\00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> !llvm.i32
  llvm.func @gettimeofday(!llvm.ptr<struct<"struct.timeval", (i64, i64)>>, !llvm.ptr<struct<"struct.timezone", (i32, i32)>>) -> !llvm.i32
  global_memref "private" @polybench_t_start : memref<1xf64>
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("corr\00")
  llvm.mlir.global internal constant @str2("begin dump: %s\00")
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> !llvm.i32
  llvm.mlir.global internal constant @str0("\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c42_i32 = constant 42 : i32
    %true = constant true
    %false = constant false
    %c1400_i32 = constant 1400 : i32
    %c0_i32 = constant 0 : i32
    %c1200_i32 = constant 1200 : i32
    %c1_i32 = constant 1 : i32
    %c1199 = constant 1199 : index
    %c0 = constant 0 : index
    %0 = alloca() : memref<1xf64>
    %1 = alloc() : memref<1400x1200xf64>
    %2 = alloc() : memref<1200x1200xf64>
    %3 = alloc() : memref<1200xf64>
    %4 = alloc() : memref<1200xf64>
    %5 = sitofp %c1400_i32 : i32 to f64
    store %5, %0[%c0] : memref<1xf64>
    br ^bb1(%c0_i32 : i32)
  ^bb1(%6: i32):  // 2 preds: ^bb0, ^bb5
    %7 = cmpi "slt", %6, %c1400_i32 : i32
    %8 = index_cast %6 : i32 to index
    cond_br %7, ^bb3(%c0_i32 : i32), ^bb2
  ^bb2:  // pred: ^bb1
    %9 = get_global_memref @polybench_t_start : memref<1xf64>
    %10 = call @rtclock() : () -> f64
    store %10, %9[%c0] : memref<1xf64>
    %11 = load %0[%c0] : memref<1xf64>
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map0(%arg2) to min #map1(%arg2) {
        call @S3(%4, %arg3) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map2(%arg2) to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map3(%arg2, %arg3) {
          affine.for %arg5 = max #map4(%arg3, %arg4) to min #map1(%arg3) {
            call @S11(%2, %arg4, %arg5) : (memref<1200x1200xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 82 {
      affine.for %arg3 = max #map5(%arg2) to min #map6(%arg2) {
        affine.for %arg4 = #map2(%arg3) to 38 {
          affine.for %arg5 = #map0(%arg3) to min #map3(%arg3, %arg4) {
            affine.for %arg6 = max #map4(%arg4, %arg5) to min #map1(%arg4) {
              affine.for %arg7 = #map7(%arg2, %arg3) to min #map8(%arg2, %arg3) {
                call @S12(%2, %arg5, %arg6, %1, %arg7) : (memref<1200x1200xf64>, index, index, memref<1400x1200xf64>, index) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map2(%arg2) to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map3(%arg2, %arg3) {
          affine.for %arg5 = max #map4(%arg3, %arg4) to min #map1(%arg3) {
            call @S13(%2, %arg4, %arg5) : (memref<1200x1200xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map0(%arg2) to min #map9(%arg2) {
        call @S10(%2, %arg3) : (memref<1200x1200xf64>, index) -> ()
        call @S0(%3, %arg3) : (memref<1200xf64>, index) -> ()
      }
      affine.if #set0(%arg2) {
        call @S0(%3, %c1199) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.if #set1() {
      call @S0(%3, %c1199) : (memref<1200xf64>, index) -> ()
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = 0 to 44 {
        affine.for %arg4 = #map0(%arg2) to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map10(%arg3) {
            call @S1(%3, %arg4, %1, %arg5) : (memref<1200xf64>, index, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map0(%arg2) to min #map1(%arg2) {
        call @S2(%3, %arg3, %11) : (memref<1200xf64>, index, f64) -> ()
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = 0 to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map11(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map11(%arg3) {
            call @S4(%4, %arg4, %3, %1, %arg5) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
            call @S8(%1, %arg5, %arg4, %3) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
          affine.for %arg5 = 1200 to min #map10(%arg3) {
            call @S4(%4, %arg4, %3, %1, %arg5) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
          affine.for %arg5 = 1400 to min #map1(%arg3) {
            call @S8(%1, %arg5, %arg4, %3) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
        affine.for %arg4 = 1400 to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map10(%arg3) {
            call @S4(%4, %arg4, %3, %1, %arg5) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
        affine.for %arg4 = 1200 to min #map10(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            call @S8(%1, %arg5, %arg4, %3) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
      affine.for %arg3 = 38 to 44 {
        affine.for %arg4 = #map0(%arg2) to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map10(%arg3) {
            call @S4(%4, %arg4, %3, %1, %arg5) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
      affine.for %arg3 = 44 to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map10(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            call @S8(%1, %arg5, %arg4, %3) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 44 to 38 {
      affine.for %arg3 = 0 to 44 {
        affine.for %arg4 = #map0(%arg2) to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map10(%arg3) {
            call @S4(%4, %arg4, %3, %1, %arg5) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 38 to 44 {
      affine.for %arg3 = 0 to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map10(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            call @S8(%1, %arg5, %arg4, %3) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 38 {
      affine.for %arg3 = #map0(%arg2) to min #map1(%arg2) {
        call @S5(%4, %arg3, %11) : (memref<1200xf64>, index, f64) -> ()
        call @S6(%4, %arg3) : (memref<1200xf64>, index) -> ()
        call @S7(%4, %arg3) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.for %arg2 = 0 to 44 {
      affine.for %arg3 = 0 to 38 {
        affine.for %arg4 = #map0(%arg2) to min #map10(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            call @S9(%1, %arg5, %arg4, %4, %11) : (memref<1400x1200xf64>, index, index, memref<1200xf64>, f64) -> ()
          }
        }
      }
    }
    %12 = get_global_memref @polybench_t_end : memref<1xf64>
    %13 = call @rtclock() : () -> f64
    store %13, %12[%c0] : memref<1xf64>
    call @polybench_timer_print() : () -> ()
    %14 = cmpi "sgt", %arg0, %c42_i32 : i32
    %15 = scf.if %14 -> (i1) {
      %27 = llvm.load %arg1 : !llvm.ptr<ptr<i8>>
      %28 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %29 = llvm.mlir.constant(0 : index) : !llvm.i64
      %30 = llvm.getelementptr %28[%29, %29] : (!llvm.ptr<array<1 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %31 = llvm.call @strcmp(%27, %30) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
      %32 = llvm.mlir.cast %31 : !llvm.i32 to i32
      %33 = trunci %32 : i32 to i1
      %34 = xor %33, %true : i1
      scf.yield %34 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %15 {
      call @print_array(%c1200_i32, %2) : (i32, memref<1200x1200xf64>) -> ()
    }
    return %c0_i32 : i32
  ^bb3(%16: i32):  // 2 preds: ^bb1, ^bb4
    %17 = cmpi "slt", %16, %c1200_i32 : i32
    %18 = index_cast %16 : i32 to index
    cond_br %17, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %19 = muli %6, %16 : i32
    %20 = sitofp %19 : i32 to f64
    %21 = sitofp %c1200_i32 : i32 to f64
    %22 = divf %20, %21 : f64
    %23 = sitofp %6 : i32 to f64
    %24 = addf %22, %23 : f64
    store %24, %1[%8, %18] : memref<1400x1200xf64>
    %25 = addi %16, %c1_i32 : i32
    br ^bb3(%25 : i32)
  ^bb5:  // pred: ^bb3
    %26 = addi %6, %c1_i32 : i32
    br ^bb1(%26 : i32)
  }
  func @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<1400x1200xf64>) {
    %c0 = constant 0 : index
    %c1400_i32 = constant 1400 : i32
    %c0_i32 = constant 0 : i32
    %c1200_i32 = constant 1200 : i32
    %c1_i32 = constant 1 : i32
    %0 = sitofp %c1400_i32 : i32 to f64
    store %0, %arg2[%c0] : memref<?xf64>
    br ^bb1(%c0_i32 : i32)
  ^bb1(%1: i32):  // 2 preds: ^bb0, ^bb5
    %2 = cmpi "slt", %1, %c1400_i32 : i32
    %3 = index_cast %1 : i32 to index
    cond_br %2, ^bb3(%c0_i32 : i32), ^bb2
  ^bb2:  // pred: ^bb1
    return
  ^bb3(%4: i32):  // 2 preds: ^bb1, ^bb4
    %5 = cmpi "slt", %4, %c1200_i32 : i32
    %6 = index_cast %4 : i32 to index
    cond_br %5, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %7 = muli %1, %4 : i32
    %8 = sitofp %7 : i32 to f64
    %9 = sitofp %c1200_i32 : i32 to f64
    %10 = divf %8, %9 : f64
    %11 = sitofp %1 : i32 to f64
    %12 = addf %10, %11 : f64
    store %12, %arg3[%3, %6] : memref<1400x1200xf64>
    %13 = addi %4, %c1_i32 : i32
    br ^bb3(%13 : i32)
  ^bb5:  // pred: ^bb3
    %14 = addi %1, %c1_i32 : i32
    br ^bb1(%14 : i32)
  }
  func @polybench_timer_start() {
    %c0 = constant 0 : index
    %0 = get_global_memref @polybench_t_start : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    store %1, %0[%c0] : memref<1xf64>
    return
  }
  func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<1400x1200xf64>, %arg4: memref<1200x1200xf64>, %arg5: memref<1200xf64>, %arg6: memref<1200xf64>) {
    %c1 = constant 1 : index
    %cst = constant 1.000000e+00 : f64
    %0 = index_cast %arg1 : i32 to index
    %1 = index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      call @S0(%arg5, %arg7) : (memref<1200xf64>, index) -> ()
      affine.for %arg8 = 0 to %0 {
        call @S1(%arg5, %arg7, %arg3, %arg8) : (memref<1200xf64>, index, memref<1400x1200xf64>, index) -> ()
      }
      call @S2(%arg5, %arg7, %arg2) : (memref<1200xf64>, index, f64) -> ()
    }
    affine.for %arg7 = 0 to %1 {
      call @S3(%arg6, %arg7) : (memref<1200xf64>, index) -> ()
      affine.for %arg8 = 0 to %0 {
        call @S4(%arg6, %arg7, %arg5, %arg3, %arg8) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
      }
      call @S5(%arg6, %arg7, %arg2) : (memref<1200xf64>, index, f64) -> ()
      call @S6(%arg6, %arg7) : (memref<1200xf64>, index) -> ()
      call @S7(%arg6, %arg7) : (memref<1200xf64>, index) -> ()
    }
    affine.for %arg7 = 0 to %0 {
      affine.for %arg8 = 0 to %1 {
        call @S8(%arg3, %arg7, %arg8, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
        call @S9(%arg3, %arg7, %arg8, %arg6, %arg2) : (memref<1400x1200xf64>, index, index, memref<1200xf64>, f64) -> ()
      }
    }
    %2 = subi %1, %c1 : index
    affine.for %arg7 = 0 to #map12()[%1] {
      call @S10(%arg4, %arg7) : (memref<1200x1200xf64>, index) -> ()
      affine.for %arg8 = #map13(%arg7) to %1 {
        call @S11(%arg4, %arg7, %arg8) : (memref<1200x1200xf64>, index, index) -> ()
        affine.for %arg9 = 0 to %0 {
          call @S12(%arg4, %arg7, %arg8, %arg3, %arg9) : (memref<1200x1200xf64>, index, index, memref<1400x1200xf64>, index) -> ()
        }
        call @S13(%arg4, %arg8, %arg7) : (memref<1200x1200xf64>, index, index) -> ()
      }
    }
    store %cst, %arg4[%2, %2] : memref<1200x1200xf64>
    return
  }
  func @polybench_timer_stop() {
    %c0 = constant 0 : index
    %0 = get_global_memref @polybench_t_end : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    store %1, %0[%c0] : memref<1xf64>
    return
  }
  func @polybench_timer_print() {
    %c0 = constant 0 : index
    %0 = llvm.mlir.addressof @str9 : !llvm.ptr<array<7 x i8>>
    %1 = llvm.mlir.constant(0 : index) : !llvm.i64
    %2 = llvm.getelementptr %0[%1, %1] : (!llvm.ptr<array<7 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %3 = get_global_memref @polybench_t_end : memref<1xf64>
    %4 = load %3[%c0] : memref<1xf64>
    %5 = get_global_memref @polybench_t_start : memref<1xf64>
    %6 = load %5[%c0] : memref<1xf64>
    %7 = subf %4, %6 : f64
    %8 = llvm.mlir.cast %7 : f64 to !llvm.double
    %9 = llvm.call @printf(%2, %8) : (!llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    return
  }
  func @print_array(%arg0: i32, %arg1: memref<1200x1200xf64>) {
    %c0_i32 = constant 0 : i32
    %c20_i32 = constant 20 : i32
    %c1_i32 = constant 1 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %2 = llvm.mlir.addressof @str1 : !llvm.ptr<array<23 x i8>>
    %3 = llvm.mlir.constant(0 : index) : !llvm.i64
    %4 = llvm.getelementptr %2[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %5 = llvm.call @fprintf(%1, %4) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %8 = llvm.mlir.addressof @str2 : !llvm.ptr<array<15 x i8>>
    %9 = llvm.getelementptr %8[%3, %3] : (!llvm.ptr<array<15 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %10 = llvm.mlir.addressof @str3 : !llvm.ptr<array<5 x i8>>
    %11 = llvm.getelementptr %10[%3, %3] : (!llvm.ptr<array<5 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %12 = llvm.call @fprintf(%7, %9, %11) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    br ^bb1(%c0_i32 : i32)
  ^bb1(%13: i32):  // 2 preds: ^bb0, ^bb5
    %14 = cmpi "slt", %13, %arg0 : i32
    %15 = index_cast %13 : i32 to index
    cond_br %14, ^bb3(%c0_i32 : i32), ^bb2
  ^bb2:  // pred: ^bb1
    %16 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %17 = llvm.load %16 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %18 = llvm.mlir.addressof @str6 : !llvm.ptr<array<17 x i8>>
    %19 = llvm.getelementptr %18[%3, %3] : (!llvm.ptr<array<17 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %20 = llvm.mlir.addressof @str3 : !llvm.ptr<array<5 x i8>>
    %21 = llvm.getelementptr %20[%3, %3] : (!llvm.ptr<array<5 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %22 = llvm.call @fprintf(%17, %19, %21) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    %23 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %24 = llvm.load %23 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %25 = llvm.mlir.addressof @str7 : !llvm.ptr<array<23 x i8>>
    %26 = llvm.getelementptr %25[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %27 = llvm.call @fprintf(%24, %26) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    return
  ^bb3(%28: i32):  // 2 preds: ^bb1, ^bb4
    %29 = cmpi "slt", %28, %arg0 : i32
    %30 = index_cast %28 : i32 to index
    cond_br %29, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %31 = muli %13, %arg0 : i32
    %32 = addi %31, %28 : i32
    %33 = remi_signed %32, %c20_i32 : i32
    %34 = cmpi "eq", %33, %c0_i32 : i32
    scf.if %34 {
      %44 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %45 = llvm.load %44 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %46 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
      %47 = llvm.getelementptr %46[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %48 = llvm.call @fprintf(%45, %47) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %35 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %37 = llvm.mlir.addressof @str5 : !llvm.ptr<array<8 x i8>>
    %38 = llvm.getelementptr %37[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %39 = load %arg1[%15, %30] : memref<1200x1200xf64>
    %40 = llvm.mlir.cast %39 : f64 to !llvm.double
    %41 = llvm.call @fprintf(%36, %38, %40) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %42 = addi %28, %c1_i32 : i32
    br ^bb3(%42 : i32)
  ^bb5:  // pred: ^bb3
    %43 = addi %13, %c1_i32 : i32
    br ^bb1(%43 : i32)
  }
  func private @free(memref<?xi8>)
  func @polybench_prepare_instruments() {
    return
  }
  func @rtclock() -> f64 {
    %c0_i32 = constant 0 : i32
    %cst = constant 9.9999999999999995E-7 : f64
    %0 = llvm.mlir.constant(1 : index) : !llvm.i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.timeval", (i64, i64)> : (!llvm.i64) -> !llvm.ptr<struct<"struct.timeval", (i64, i64)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"struct.timezone", (i32, i32)>>
    %3 = llvm.call @gettimeofday(%1, %2) : (!llvm.ptr<struct<"struct.timeval", (i64, i64)>>, !llvm.ptr<struct<"struct.timezone", (i32, i32)>>) -> !llvm.i32
    %4 = llvm.mlir.cast %3 : !llvm.i32 to i32
    %5 = llvm.load %1 : !llvm.ptr<struct<"struct.timeval", (i64, i64)>>
    %6 = llvm.extractvalue %5[0] : !llvm.struct<"struct.timeval", (i64, i64)>
    %7 = llvm.mlir.cast %6 : !llvm.i64 to i64
    %8 = llvm.extractvalue %5[1] : !llvm.struct<"struct.timeval", (i64, i64)>
    %9 = llvm.mlir.cast %8 : !llvm.i64 to i64
    %10 = cmpi "ne", %4, %c0_i32 : i32
    scf.if %10 {
      %15 = llvm.mlir.addressof @str8 : !llvm.ptr<array<35 x i8>>
      %16 = llvm.mlir.constant(0 : index) : !llvm.i64
      %17 = llvm.getelementptr %15[%16, %16] : (!llvm.ptr<array<35 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %18 = llvm.mlir.cast %4 : i32 to !llvm.i32
      %19 = llvm.call @printf(%17, %18) : (!llvm.ptr<i8>, !llvm.i32) -> !llvm.i32
    }
    %11 = sitofp %7 : i64 to f64
    %12 = sitofp %9 : i64 to f64
    %13 = mulf %12, %cst : f64
    %14 = addf %11, %13 : f64
    return %14 : f64
  }
  func private @S0(%arg0: memref<1200xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S1(%arg0: memref<1200xf64>, %arg1: index, %arg2: memref<1400x1200xf64>, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = affine.load %arg2[%arg3, %arg1] : memref<1400x1200xf64>
    %2 = addf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S2(%arg0: memref<1200xf64>, %arg1: index, %arg2: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = divf %0, %arg2 : f64
    affine.store %1, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S3(%arg0: memref<1200xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S4(%arg0: memref<1200xf64>, %arg1: index, %arg2: memref<1200xf64>, %arg3: memref<1400x1200xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = affine.load %arg3[%arg4, %arg1] : memref<1400x1200xf64>
    %2 = affine.load %arg2[%arg1] : memref<1200xf64>
    %3 = subf %1, %2 : f64
    %4 = affine.load %arg3[%arg4, %arg1] : memref<1400x1200xf64>
    %5 = affine.load %arg2[%arg1] : memref<1200xf64>
    %6 = subf %4, %5 : f64
    %7 = mulf %3, %6 : f64
    %8 = addf %0, %7 : f64
    affine.store %8, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S5(%arg0: memref<1200xf64>, %arg1: index, %arg2: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = divf %0, %arg2 : f64
    affine.store %1, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S6(%arg0: memref<1200xf64>, %arg1: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = sqrt %0 : f64
    affine.store %1, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S7(%arg0: memref<1200xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = constant 1.000000e-01 : f64
    %cst_0 = constant 1.000000e+00 : f64
    %0 = affine.load %arg0[%arg1] : memref<1200xf64>
    %1 = cmpf "ule", %0, %cst : f64
    %2 = scf.if %1 -> (f64) {
      scf.yield %cst_0 : f64
    } else {
      %3 = affine.load %arg0[%arg1] : memref<1200xf64>
      scf.yield %3 : f64
    }
    affine.store %2, %arg0[%arg1] : memref<1200xf64>
    return
  }
  func private @S8(%arg0: memref<1400x1200xf64>, %arg1: index, %arg2: index, %arg3: memref<1200xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<1400x1200xf64>
    %1 = affine.load %arg3[%arg2] : memref<1200xf64>
    %2 = subf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<1400x1200xf64>
    return
  }
  func private @S9(%arg0: memref<1400x1200xf64>, %arg1: index, %arg2: index, %arg3: memref<1200xf64>, %arg4: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<1400x1200xf64>
    %1 = sqrt %arg4 : f64
    %2 = affine.load %arg3[%arg2] : memref<1200xf64>
    %3 = mulf %1, %2 : f64
    %4 = divf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<1400x1200xf64>
    return
  }
  func private @S10(%arg0: memref<1200x1200xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = constant 1.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg1] : memref<1200x1200xf64>
    return
  }
  func private @S11(%arg0: memref<1200x1200xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<1200x1200xf64>
    return
  }
  func private @S12(%arg0: memref<1200x1200xf64>, %arg1: index, %arg2: index, %arg3: memref<1400x1200xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<1200x1200xf64>
    %1 = affine.load %arg3[%arg4, %arg1] : memref<1400x1200xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<1400x1200xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<1200x1200xf64>
    return
  }
  func private @S13(%arg0: memref<1200x1200xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg2, %arg1] : memref<1200x1200xf64>
    affine.store %0, %arg0[%arg1, %arg2] : memref<1200x1200xf64>
    return
  }
  func @" c\B8\01\00\00\00\00orrelation_new"(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<1400x1200xf64>, %arg4: memref<1200x1200xf64>, %arg5: memref<1200xf64>, %arg6: memref<1200xf64>) {
    %0 = index_cast %arg1 : i32 to index
    %1 = index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to #map14()[%1] {
      affine.for %arg8 = #map0(%arg7) to min #map15(%arg7)[%1] {
        call @S3(%arg6, %arg8) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.for %arg7 = 0 to #map16()[%1] {
      affine.for %arg8 = #map2(%arg7) to #map14()[%1] {
        affine.for %arg9 = #map0(%arg7) to min #map17(%arg7, %arg8)[%1] {
          affine.for %arg10 = max #map4(%arg8, %arg9) to min #map15(%arg8)[%1] {
            call @S11(%arg4, %arg9, %arg10) : (memref<1200x1200xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg7 = 0 to #map18()[%0, %1] {
      affine.for %arg8 = max #map19(%arg7)[%0] to min #map20(%arg7)[%1] {
        affine.for %arg9 = #map2(%arg8) to #map14()[%1] {
          affine.for %arg10 = #map0(%arg8) to min #map17(%arg8, %arg9)[%1] {
            affine.for %arg11 = max #map4(%arg9, %arg10) to min #map15(%arg9)[%1] {
              affine.for %arg12 = #map7(%arg7, %arg8) to min #map21(%arg7, %arg8)[%0] {
                call @S12(%arg4, %arg10, %arg11, %arg3, %arg12) : (memref<1200x1200xf64>, index, index, memref<1400x1200xf64>, index) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg7 = 0 to #map16()[%1] {
      affine.for %arg8 = #map2(%arg7) to #map14()[%1] {
        affine.for %arg9 = #map0(%arg7) to min #map17(%arg7, %arg8)[%1] {
          affine.for %arg10 = max #map4(%arg8, %arg9) to min #map15(%arg8)[%1] {
            call @S13(%arg4, %arg9, %arg10) : (memref<1200x1200xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg7 = 0 to #map16()[%1] {
      affine.for %arg8 = #map0(%arg7) to min #map22(%arg7)[%1] {
        call @S10(%arg4, %arg8) : (memref<1200x1200xf64>, index) -> ()
        call @S0(%arg5, %arg8) : (memref<1200xf64>, index) -> ()
      }
      affine.if #set2(%arg7)[%1] {
        %2 = affine.apply #map12()[%1]
        call @S0(%arg5, %2) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.if #set3()[%1] {
      %2 = affine.apply #map12()[%1]
      call @S0(%arg5, %2) : (memref<1200xf64>, index) -> ()
    }
    affine.for %arg7 = 0 to #map14()[%1] {
      affine.for %arg8 = 0 to #map14()[%0] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%1] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%0] {
            call @S1(%arg5, %arg9, %arg3, %arg10) : (memref<1200xf64>, index, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
    }
    affine.for %arg7 = 0 to #map14()[%1] {
      affine.for %arg8 = #map0(%arg7) to min #map15(%arg7)[%1] {
        call @S2(%arg5, %arg8, %arg2) : (memref<1200xf64>, index, f64) -> ()
      }
    }
    affine.for %arg7 = 0 to min #map23()[%0, %1] {
      affine.for %arg8 = 0 to min #map23()[%0, %1] {
        affine.for %arg9 = #map0(%arg7) to min #map24(%arg7)[%0, %1] {
          affine.for %arg10 = #map0(%arg8) to min #map24(%arg8)[%0, %1] {
            call @S4(%arg6, %arg9, %arg5, %arg3, %arg10) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
            call @S8(%arg3, %arg10, %arg9, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
          affine.for %arg10 = %1 to min #map15(%arg8)[%0] {
            call @S4(%arg6, %arg9, %arg5, %arg3, %arg10) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
          affine.for %arg10 = %0 to min #map15(%arg8)[%1] {
            call @S8(%arg3, %arg10, %arg9, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
        affine.for %arg9 = %0 to min #map15(%arg7)[%1] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%0] {
            call @S4(%arg6, %arg9, %arg5, %arg3, %arg10) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
        affine.for %arg9 = %1 to min #map15(%arg7)[%0] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%1] {
            call @S8(%arg3, %arg10, %arg9, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
      affine.for %arg8 = #map25()[%1] to #map14()[%0] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%1] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%0] {
            call @S4(%arg6, %arg9, %arg5, %arg3, %arg10) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
      affine.for %arg8 = #map25()[%0] to #map14()[%1] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%0] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%1] {
            call @S8(%arg3, %arg10, %arg9, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg7 = #map25()[%0] to #map14()[%1] {
      affine.for %arg8 = 0 to #map14()[%0] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%1] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%0] {
            call @S4(%arg6, %arg9, %arg5, %arg3, %arg10) : (memref<1200xf64>, index, memref<1200xf64>, memref<1400x1200xf64>, index) -> ()
          }
        }
      }
    }
    affine.for %arg7 = #map25()[%1] to #map14()[%0] {
      affine.for %arg8 = 0 to #map14()[%1] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%0] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%1] {
            call @S8(%arg3, %arg10, %arg9, %arg5) : (memref<1400x1200xf64>, index, index, memref<1200xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg7 = 0 to #map14()[%1] {
      affine.for %arg8 = #map0(%arg7) to min #map15(%arg7)[%1] {
        call @S5(%arg6, %arg8, %arg2) : (memref<1200xf64>, index, f64) -> ()
        call @S6(%arg6, %arg8) : (memref<1200xf64>, index) -> ()
        call @S7(%arg6, %arg8) : (memref<1200xf64>, index) -> ()
      }
    }
    affine.for %arg7 = 0 to #map14()[%0] {
      affine.for %arg8 = 0 to #map14()[%1] {
        affine.for %arg9 = #map0(%arg7) to min #map15(%arg7)[%0] {
          affine.for %arg10 = #map0(%arg8) to min #map15(%arg8)[%1] {
            call @S9(%arg3, %arg10, %arg9, %arg6, %arg2) : (memref<1400x1200xf64>, index, index, memref<1200xf64>, f64) -> ()
          }
        }
      }
    }
    return
  }
}
