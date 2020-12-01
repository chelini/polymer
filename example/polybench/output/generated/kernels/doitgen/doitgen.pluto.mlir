#map0 = affine_map<() -> (0)>
#map1 = affine_map<()[s0] -> (s0)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0) -> (d0 * 32)>
#map6 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#map7 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>


module {
  func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<150x140x160xf64>, %arg4: memref<160x160xf64>, %arg5: memref<160xf64>) {
    %0 = index_cast %arg0 : i32 to index
    %1 = index_cast %arg1 : i32 to index
    %2 = index_cast %arg2 : i32 to index
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %1 {
        affine.for %arg8 = 0 to %2 {
          call @S0(%arg5, %arg8) : (memref<160xf64>, index) -> ()
          %3 = alloca() : memref<1xf64>
          call @S1(%3, %arg5, %arg8) : (memref<1xf64>, memref<160xf64>, index) -> ()
          affine.for %arg9 = 0 to %2 {
            call @S2(%arg5, %arg8, %arg4, %arg9, %arg3, %arg6, %arg7, %3) : (memref<160xf64>, index, memref<160x160xf64>, index, memref<150x140x160xf64>, index, index, memref<1xf64>) -> ()
          }
        }
        affine.for %arg8 = 0 to %2 {
          call @S3(%arg3, %arg6, %arg7, %arg8, %arg5) : (memref<150x140x160xf64>, index, index, index, memref<160xf64>) -> ()
        }
      }
    }
    return
  }
  func @S0(%arg0: memref<160xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<160xf64>
    return
  }
  func @S1(%arg0: memref<1xf64>, %arg1: memref<160xf64>, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[%arg2] : memref<160xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func @S2(%arg0: memref<160xf64>, %arg1: index, %arg2: memref<160x160xf64>, %arg3: index, %arg4: memref<150x140x160xf64>, %arg5: index, %arg6: index, %arg7: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg7[0] : memref<1xf64>
    %1 = affine.load %arg4[%arg5, %arg6, %arg3] : memref<150x140x160xf64>
    %2 = affine.load %arg2[%arg3, %arg1] : memref<160x160xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<160xf64>
    return
  }
  func @S3(%arg0: memref<150x140x160xf64>, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<160xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg3] : memref<160xf64>
    affine.store %0, %arg0[%arg1, %arg2, %arg3] : memref<150x140x160xf64>
    return
  }
  func @kernel_doitgen_new(%arg0: memref<160xf64>, %arg1: memref<150x140x160xf64>, %arg2: memref<160x160xf64>, %arg3: i32, %arg4: i32, %arg5: i32) {
    %0 = index_cast %arg5 : i32 to index
    %1 = index_cast %arg4 : i32 to index
    %2 = index_cast %arg3 : i32 to index
    affine.for %arg6 = 0 to %2 {
      affine.for %arg7 = 0 to %1 {
        affine.for %arg8 = 0 to #map7()[%0] {
          %3 = alloca() : memref<1xf64>
          affine.for %arg9 = #map5(%arg8) to min #map6(%arg8)[%0] {
            %4 = affine.apply #map2(%arg6)
            call @S0(%arg0, %4) : (memref<160xf64>, index) -> ()
          }
        }
        affine.for %arg8 = 0 to %0 {
          %3 = alloca() : memref<1xf64>
          %4 = affine.apply #map2(%arg6)
          call @S1(%3, %arg0, %4) : (memref<1xf64>, memref<160xf64>, index) -> ()
          affine.for %arg9 = 0 to %0 {
            %5 = alloca() : memref<1xf64>
            %6 = affine.apply #map2(%arg7)
            %7 = affine.apply #map2(%arg8)
            %8 = affine.apply #map2(%arg9)
            call @S2(%arg0, %4, %arg2, %6, %arg1, %7, %8, %5) : (memref<160xf64>, index, memref<160x160xf64>, index, memref<150x140x160xf64>, index, index, memref<1xf64>) -> ()
          }
        }
        affine.for %arg8 = 0 to #map7()[%0] {
          affine.for %arg9 = #map5(%arg8) to min #map6(%arg8)[%0] {
            %3 = affine.apply #map2(%arg6)
            %4 = affine.apply #map2(%arg7)
            %5 = affine.apply #map2(%arg9)
            call @S3(%arg1, %3, %4, %5, %arg0) : (memref<150x140x160xf64>, index, index, index, memref<160xf64>) -> ()
          }
        }
      }
    }
    return
  }
}
