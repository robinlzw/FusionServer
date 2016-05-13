TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++11

LIBS += -lpqxx -lpq -lhiredis
LIBS += -lIce -lIceUtil -lpthread
LIBS += -L/usr/local/lib -lproj -lgdal


INCLUDEPATH += ./main/src/algorithm/fusion/gdal/include
INCLUDEPATH += ./main/src/algorithm/fusion/proj/include

SOURCES += \
    main/Server.cpp \
    main/src/utils/log.cpp \
    main/src/threadpool/ThreadPool.cpp \
    main/src/threadpool/Task.cpp \
    main/src/threadpool/Mutex.cpp \
    main/src/algorithm/fusion/Tools.cpp \
    main/src/algorithm/fusion/PCAFusion.cpp \
    main/src/algorithm/fusion/PCA.cpp \
    main/src/algorithm/fusion/HSIFusion.cpp \
    main/src/algorithm/fusion/HSI.cpp \
    main/src/algorithm/fusion/HCSFusion.cpp \
    main/src/algorithm/fusion/HCS.cpp \
    main/src/algorithm/fusion/GramSchmidtFusion.cpp \
    main/src/algorithm/fusion/DWTFusion.cpp \
    main/src/algorithm/fusion/CurveletFusion.cpp \
    main/src/algorithm/fusion/BroveyFusion.cpp \
    main/src/algorithm/fusion/curvelet/ifdct_wrapping.cpp \
    main/src/algorithm/fusion/curvelet/fdct_wrapping.cpp \
    main/src/algorithm/fusion/curvelet/fdct_wrapping_param.cpp \
    main/src/algorithm/fusion/curvelet/fftw/wisdomio.c \
    main/src/algorithm/fusion/curvelet/fftw/wisdom.c \
    main/src/algorithm/fusion/curvelet/fftw/twiddle.c \
    main/src/algorithm/fusion/curvelet/fftw/timer.c \
    main/src/algorithm/fusion/curvelet/fftw/rader.c \
    main/src/algorithm/fusion/curvelet/fftw/putils.c \
    main/src/algorithm/fusion/curvelet/fftw/planner.c \
    main/src/algorithm/fusion/curvelet/fftw/generic.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_64.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_32.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_16.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_10.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_9.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_8.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_7.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_6.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_5.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_4.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_3.c \
    main/src/algorithm/fusion/curvelet/fftw/ftwi_2.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_64.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_32.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_16.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_10.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_9.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_8.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_7.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_6.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_5.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_4.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_3.c \
    main/src/algorithm/fusion/curvelet/fftw/ftw_2.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_64.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_32.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_16.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_15.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_14.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_13.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_12.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_11.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_10.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_9.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_8.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_7.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_6.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_5.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_4.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_3.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_2.c \
    main/src/algorithm/fusion/curvelet/fftw/fni_1.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_64.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_32.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_16.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_15.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_14.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_13.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_12.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_11.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_10.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_9.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_8.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_7.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_6.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_5.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_4.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_3.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_2.c \
    main/src/algorithm/fusion/curvelet/fftw/fn_1.c \
    main/src/algorithm/fusion/curvelet/fftw/fftwnd.c \
    main/src/algorithm/fusion/curvelet/fftw/fftwf77.c \
    main/src/algorithm/fusion/curvelet/fftw/executor.c \
    main/src/algorithm/fusion/curvelet/fftw/config.c \
    main/src/algorithm/fusion/curvelet/fftw/malloc.cpp \
    main/src/utils/utils.cpp \
    main/src/algorithm/fusion/Fusion.cpp \
    main/src/algorithm/fusion/PgInf.cpp \
    main/src/algorithm/fusion/GdalInf.cpp \
    main/src/utils/jsoncpp.cpp \
    main/src/algorithm/quality/src/Clarity.cpp \
    main/src/algorithm/quality/src/ContrastRatio.cpp \
    main/src/algorithm/quality/src/Entropy.cpp \
    main/src/algorithm/quality/src/Mean.cpp \
    main/src/algorithm/quality/src/SignaltoNoiseRatio.cpp \
    main/src/algorithm/quality/src/Striperesidual.cpp \
    main/src/algorithm/quality/utils/qualityutils.cpp \
    main/imagefusion.cpp \
    main/imagequality.cpp \
    main/src/algorithm/fusion/utils/fusionutils.cpp \
    main/src/rpc/fusion/wisefuseRpc.cpp \
    main/src/rpc/quality/qualityjudgeRpc.cpp \
    main/src/rpc/retrieve/ImageRpc.cpp \
    main/src/algorithm/retrieve/ASIFT/libMatch/match.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/computeH.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/homography.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/matrix.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/numerics.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/rodrigues.cpp \
    main/src/algorithm/retrieve/ASIFT/libNumerics/vector.cpp \
    main/src/algorithm/retrieve/ASIFT/compute_asift_keypoints.cpp \
    main/src/algorithm/retrieve/ASIFT/compute_asift_matches.cpp \
    main/src/algorithm/retrieve/ASIFT/demo_ASIFT.cpp \
    main/src/algorithm/retrieve/ASIFT/demo_lib_sift.cpp \
    main/src/algorithm/retrieve/ASIFT/domain.cpp \
    main/src/algorithm/retrieve/ASIFT/filter.cpp \
    main/src/algorithm/retrieve/ASIFT/flimage.cpp \
    main/src/algorithm/retrieve/ASIFT/fproj.cpp \
    main/src/algorithm/retrieve/ASIFT/frot.cpp \
    main/src/algorithm/retrieve/ASIFT/library.cpp \
    main/src/algorithm/retrieve/ASIFT/numerics1.cpp \
    main/src/algorithm/retrieve/ASIFT/orsa.cpp \
    main/src/algorithm/retrieve/ASIFT/splines.cpp \
    main/src/algorithm/retrieve/utils/retrieveutils.cpp \
    main/imageretrieve.cpp \
    main/src/algorithm/retrieve/utils/pgdb.cpp \
    main/src/algorithm/retrieve/utils/myredis.cpp

HEADERS += \
    main/Server.h \
    main/src/utils/log.h \
    main/src/rpc/wisefuseRpc.h \
    main/src/threadpool/ThreadPool.h \
    main/src/threadpool/Task.h \
    main/src/threadpool/Mutex.h \
    main/src/algorithm/fusion/WT.h \
    main/src/algorithm/fusion/Tools.h \
    main/src/algorithm/fusion/PgInf.h \
    main/src/algorithm/fusion/PCAFusion.h \
    main/src/algorithm/fusion/PCA.h \
    main/src/algorithm/fusion/HSIFusion.h \
    main/src/algorithm/fusion/HSI.h \
    main/src/algorithm/fusion/HCSFusion.h \
    main/src/algorithm/fusion/HCS.h \
    main/src/algorithm/fusion/GramSchmidtFusion.h \
    main/src/algorithm/fusion/GdalInf.h \
    main/src/algorithm/fusion/DWTFusion.h \
    main/src/algorithm/fusion/CurveletFusion.h \
    main/src/algorithm/fusion/BroveyFusion.h \
    main/src/algorithm/fusion/curvelet/offvec.hpp \
    main/src/algorithm/fusion/curvelet/offmat.hpp \
    main/src/algorithm/fusion/curvelet/numvec.hpp \
    main/src/algorithm/fusion/curvelet/nummat.hpp \
    main/src/algorithm/fusion/curvelet/fdct_wrapping.hpp \
    main/src/algorithm/fusion/curvelet/fdct_wrapping_inline.hpp \
    main/src/algorithm/fusion/curvelet/fdct_wrapping_inc.hpp \
    main/src/algorithm/fusion/curvelet/fftw/fftw.h \
    main/src/algorithm/fusion/curvelet/fftw/fftw-int.h \
    main/src/algorithm/fusion/curvelet/fftw/config.h \
    main/src/utils/utils.h \
    main/src/utils/json/json-forwards.h \
    main/src/utils/json/json.h \
    main/imagefusion.h \
    main/imagequality.h \
    main/src/algorithm/fusion/utils/fusionutils.h \
    main/src/rpc/fusion/wisefuseRpc.h \
    main/src/rpc/quality/qualityjudgeRpc.h \
    main/src/rpc/retrieve/ImageRpc.h \
    main/src/algorithm/retrieve/ASIFT/libMatch/match.h \
    main/src/algorithm/retrieve/ASIFT/libNumerics/homography.h \
    main/src/algorithm/retrieve/ASIFT/libNumerics/matrix.h \
    main/src/algorithm/retrieve/ASIFT/libNumerics/numerics.h \
    main/src/algorithm/retrieve/ASIFT/libNumerics/rodrigues.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Cholesky/LDLT.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Cholesky/LLT.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/AltiVec/Complex.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/AltiVec/PacketMath.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/Default/Settings.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/NEON/Complex.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/NEON/PacketMath.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/SSE/Complex.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/SSE/MathFunctions.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/arch/SSE/PacketMath.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/CoeffBasedProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/GeneralBlockPanelKernel.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/GeneralMatrixMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/GeneralMatrixVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/Parallelizer.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/SelfadjointMatrixMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/SelfadjointMatrixVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/SelfadjointProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/SelfadjointRank2Update.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/TriangularMatrixMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/TriangularMatrixVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/TriangularSolverMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/products/TriangularSolverVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/BlasUtil.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/Constants.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/DisableStupidWarnings.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/ForwardDeclarations.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/Macros.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/Memory.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/Meta.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/ReenableStupidWarnings.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/StaticAssert.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/util/XprHelper.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Array.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/ArrayBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/ArrayWrapper.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Assign.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/BandMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Block.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/BooleanRedux.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/CommaInitializer.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/CwiseBinaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/CwiseNullaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/CwiseUnaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/CwiseUnaryView.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/DenseBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/DenseCoeffsBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/DenseStorage.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Diagonal.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/DiagonalMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/DiagonalProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Dot.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/EigenBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Flagged.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/ForceAlignedAccess.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Functors.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Fuzzy.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/GenericPacketMath.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/GlobalFunctions.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/IO.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Map.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/MapBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/MathFunctions.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Matrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/MatrixBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/NestByValue.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/NoAlias.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/NumTraits.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/PermutationMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/PlainObjectBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Product.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/ProductBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Random.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Redux.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Replicate.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/ReturnByValue.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Reverse.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Select.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/SelfAdjointView.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/SelfCwiseBinaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/SolveTriangular.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/StableNorm.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Stride.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Swap.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Transpose.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Transpositions.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/TriangularMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/VectorBlock.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/VectorwiseOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Core/Visitor.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/AlignedBox.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/All.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/AngleAxis.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Hyperplane.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/ParametrizedLine.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Quaternion.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Rotation2D.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/RotationBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Scaling.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Transform.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Geometry/Translation.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Block.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Cwise.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/CwiseOperators.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Lazy.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/LeastSquares.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/LU.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Macros.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/MathFunctions.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Memory.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Meta.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/Minor.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/QR.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/SVD.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/TriangularSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigen2Support/VectorBlock.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/ComplexEigenSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/ComplexSchur.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/EigenSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/EigenvaluesCommon.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/GeneralizedSelfAdjointEigenSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/HessenbergDecomposition.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/MatrixBaseEigenvalues.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/RealSchur.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/SelfAdjointEigenSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Eigenvalues/Tridiagonalization.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/arch/Geometry_SSE.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/AlignedBox.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/AngleAxis.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/EulerAngles.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Homogeneous.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Hyperplane.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/OrthoMethods.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/ParametrizedLine.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Quaternion.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Rotation2D.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/RotationBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Scaling.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Transform.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Translation.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Geometry/Umeyama.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Householder/BlockHouseholder.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Householder/Householder.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Householder/HouseholderSequence.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Jacobi/Jacobi.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/LU/arch/Inverse_SSE.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/LU/Determinant.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/LU/FullPivLU.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/LU/Inverse.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/LU/PartialPivLU.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/misc/Image.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/misc/Kernel.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/misc/Solve.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/ArrayCwiseBinaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/ArrayCwiseUnaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/BlockMethods.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/CommonCwiseBinaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/CommonCwiseUnaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/MatrixCwiseBinaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/plugins/MatrixCwiseUnaryOps.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/QR/ColPivHouseholderQR.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/QR/FullPivHouseholderQR.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/QR/HouseholderQR.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/AmbiVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/CompressedStorage.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/CoreIterators.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/DynamicSparseMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/MappedSparseMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseAssign.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseBlock.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseCwiseBinaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseCwiseUnaryOp.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseDenseProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseDiagonalProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseDot.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseFuzzy.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseMatrix.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseMatrixBase.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseRedux.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseSelfAdjointView.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseSparseProduct.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseTranspose.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseTriangularView.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseUtil.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/SparseView.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/Sparse/TriangularSolver.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/StlSupport/details.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/StlSupport/StdDeque.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/StlSupport/StdList.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/StlSupport/StdVector.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/SVD/JacobiSVD.h \
    main/src/algorithm/retrieve/ASIFT/third_party/Eigen/src/SVD/UpperBidiagonalization.h \
    main/src/algorithm/retrieve/ASIFT/ASIFT_Extraction.h \
    main/src/algorithm/retrieve/ASIFT/compute_asift_keypoints.h \
    main/src/algorithm/retrieve/ASIFT/compute_asift_matches.h \
    main/src/algorithm/retrieve/ASIFT/demo_lib_sift.h \
    main/src/algorithm/retrieve/ASIFT/domain.h \
    main/src/algorithm/retrieve/ASIFT/filter.h \
    main/src/algorithm/retrieve/ASIFT/flimage.h \
    main/src/algorithm/retrieve/ASIFT/fproj.h \
    main/src/algorithm/retrieve/ASIFT/frot.h \
    main/src/algorithm/retrieve/ASIFT/GdalIO.h \
    main/src/algorithm/retrieve/ASIFT/library.h \
    main/src/algorithm/retrieve/ASIFT/numerics1.h \
    main/src/algorithm/retrieve/ASIFT/orsa.h \
    main/src/algorithm/retrieve/ASIFT/splines.h \
    main/src/algorithm/retrieve/utils/retrieveutils.h \
    main/imageretrieve.h \
    main/src/algorithm/quality/utils/qualityutils.h \
    main/src/algorithm/retrieve/utils/pgdb.h \
    main/src/algorithm/retrieve/utils/myredis.h \
    main/src/algorithm/retrieve/detect/ReadCsvFile.h \
    main/src/algorithm/retrieve/detect/SR.h \
    main/src/algorithm/retrieve/detect/Vec.h

DISTFILES += \
    README.md \
    main/conf/configure.json

