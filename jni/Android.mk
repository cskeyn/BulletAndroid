#
# Copyright (C) 2011, renzhi. All rights reserved.
# http://renzhi.ca
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := irrlichtbullet

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/ \
		$(LOCAL_PATH)/Bullet \
		$(LOCAL_PATH)/Bullet/BulletCollision \
		$(LOCAL_PATH)/Bullet/BulletCollision/BroadphaseCollision \
		$(LOCAL_PATH)/Bullet/BulletCollision/NarrowPhaseCollision \
		$(LOCAL_PATH)/Bullet/BulletCollision/CollisionDispatch \
		$(LOCAL_PATH)/Bullet/BulletCollision/CollisionShapes \
		$(LOCAL_PATH)/Bullet/BulletCollision/Gimpact \
		$(LOCAL_PATH)/Bullet/BulletSoftBody \
		$(LOCAL_PATH)/Bullet/BulletDynamics \
		$(LOCAL_PATH)/Bullet/BulletDynamics/Vehicle \
		$(LOCAL_PATH)/Bullet/BulletDynamics/ConstraintSolver \
		$(LOCAL_PATH)/Bullet/BulletDynamics/Dynamics \
		$(LOCAL_PATH)/Bullet/BulletDynamics/Character \
		$(LOCAL_PATH)/Bullet/LinearMath \
		$(LOCAL_PATH)/Irrlicht/aesGladman \
		$(LOCAL_PATH)/Irrlicht/bzip2 \
		$(LOCAL_PATH)/Irrlicht/jpeglib \
		$(LOCAL_PATH)/Irrlicht/libpng \
		$(LOCAL_PATH)/Irrlicht/lzma \
		$(LOCAL_PATH)/Irrlicht/zlib \
		$(LOCAL_PATH)/Irrlicht \
		$(LOCAL_PATH)/Irrlicht/include \
		$(LOCAL_PATH)/irrBullet

libLinearMath_la_SOURCES := \
		Bullet/LinearMath/btQuickprof.cpp \
		Bullet/LinearMath/btGeometryUtil.cpp \
		Bullet/LinearMath/btAlignedAllocator.cpp \
		Bullet/LinearMath/btSerializer.cpp \
		Bullet/LinearMath/btConvexHull.cpp \
		Bullet/LinearMath/btConvexHullComputer.cpp \
		Bullet/LinearMath/btHashMap.h \
		Bullet/LinearMath/btConvexHull.h \
		Bullet/LinearMath/btAabbUtil2.h \
		Bullet/LinearMath/btGeometryUtil.h \
		Bullet/LinearMath/btQuadWord.h \
		Bullet/LinearMath/btPoolAllocator.h \
		Bullet/LinearMath/btScalar.h \
		Bullet/LinearMath/btMinMax.h \
		Bullet/LinearMath/btVector3.h \
		Bullet/LinearMath/btList.h \
		Bullet/LinearMath/btStackAlloc.h \
		Bullet/LinearMath/btMatrix3x3.h \
		Bullet/LinearMath/btMotionState.h \
		Bullet/LinearMath/btAlignedAllocator.h \
		Bullet/LinearMath/btQuaternion.h \
		Bullet/LinearMath/btAlignedObjectArray.h \
		Bullet/LinearMath/btQuickprof.h \
		Bullet/LinearMath/btSerializer.h \
		Bullet/LinearMath/btTransformUtil.h \
		Bullet/LinearMath/btTransform.h \
		Bullet/LinearMath/btDefaultMotionState.h \
		Bullet/LinearMath/btIDebugDraw.h \
		Bullet/LinearMath/btRandom.h

libBulletCollision_la_SOURCES := \
		Bullet/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp \
		Bullet/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btCollisionObject.cpp \
		Bullet/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btGhostObject.cpp \
		Bullet/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp \
		Bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp \
		Bullet/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp \
		Bullet/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp \
		Bullet/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp \
		Bullet/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp \
		Bullet/BulletCollision/CollisionDispatch/btManifoldResult.cpp \
		Bullet/BulletCollision/CollisionDispatch/btCollisionWorld.cpp \
		Bullet/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp \
		Bullet/BulletCollision/CollisionDispatch/btUnionFind.cpp \
		Bullet/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp \
		Bullet/BulletCollision/CollisionShapes/btTetrahedronShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btShapeHull.cpp \
		Bullet/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btCompoundShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConeShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp \
		Bullet/BulletCollision/CollisionShapes/btMultiSphereShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btUniformScalingShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btSphereShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp \
		Bullet/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleBuffer.cpp \
		Bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btEmptyShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btCollisionShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvex2dShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexInternalShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexHullShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleCallback.cpp \
		Bullet/BulletCollision/CollisionShapes/btCapsuleShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConcaveShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btBoxShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btBox2dShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btOptimizedBvh.cpp \
		Bullet/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btCylinderShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp \
		Bullet/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp \
		Bullet/BulletCollision/CollisionShapes/btTriangleMesh.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btDispatcher.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btDbvt.cpp \
		Bullet/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btConvexCast.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btPointCollector.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btConvexPenetrationDepthSolver.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btSimplexSolverInterface.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btRaycastCallback.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h \
		Bullet/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h \
		Bullet/BulletCollision/CollisionDispatch/btCollisionObject.h \
		Bullet/BulletCollision/CollisionDispatch/btGhostObject.h \
		Bullet/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h \
		Bullet/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btBoxBoxDetector.h \
		Bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.h \
		Bullet/BulletCollision/CollisionDispatch/SphereTriangleDetector.h \
		Bullet/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btUnionFind.h \
		Bullet/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btSimulationIslandManager.h \
		Bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h \
		Bullet/BulletCollision/CollisionDispatch/btCollisionWorld.h \
		Bullet/BulletCollision/CollisionDispatch/btInternalEdgeUtility.h \
		Bullet/BulletCollision/CollisionDispatch/btManifoldResult.h \
		Bullet/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.h \
		Bullet/BulletCollision/CollisionDispatch/btCollisionConfiguration.h \
		Bullet/BulletCollision/CollisionShapes/btConvexShape.h \
		Bullet/BulletCollision/CollisionShapes/btConvex2dShape.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleCallback.h \
		Bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h \
		Bullet/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.h \
		Bullet/BulletCollision/CollisionShapes/btCompoundShape.h \
		Bullet/BulletCollision/CollisionShapes/btBoxShape.h \
		Bullet/BulletCollision/CollisionShapes/btBox2dShape.h \
		Bullet/BulletCollision/CollisionShapes/btMultiSphereShape.h \
		Bullet/BulletCollision/CollisionShapes/btCollisionMargin.h \
		Bullet/BulletCollision/CollisionShapes/btConcaveShape.h \
		Bullet/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h \
		Bullet/BulletCollision/CollisionShapes/btEmptyShape.h \
		Bullet/BulletCollision/CollisionShapes/btUniformScalingShape.h \
		Bullet/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h \
		Bullet/BulletCollision/CollisionShapes/btMaterial.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleInfoMap.h \
		Bullet/BulletCollision/CollisionShapes/btSphereShape.h \
		Bullet/BulletCollision/CollisionShapes/btConvexPointCloudShape.h \
		Bullet/BulletCollision/CollisionShapes/btCapsuleShape.h \
		Bullet/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.h \
		Bullet/BulletCollision/CollisionShapes/btCollisionShape.h \
		Bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.h \
		Bullet/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleMeshShape.h \
		Bullet/BulletCollision/CollisionShapes/btStridingMeshInterface.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleMesh.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleBuffer.h \
		Bullet/BulletCollision/CollisionShapes/btShapeHull.h \
		Bullet/BulletCollision/CollisionShapes/btMinkowskiSumShape.h \
		Bullet/BulletCollision/CollisionShapes/btOptimizedBvh.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleShape.h \
		Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.h \
		Bullet/BulletCollision/CollisionShapes/btCylinderShape.h \
		Bullet/BulletCollision/CollisionShapes/btTetrahedronShape.h \
		Bullet/BulletCollision/CollisionShapes/btConvexInternalShape.h \
		Bullet/BulletCollision/CollisionShapes/btConeShape.h \
		Bullet/BulletCollision/CollisionShapes/btConvexHullShape.h \
		Bullet/BulletCollision/BroadphaseCollision/btAxisSweep3.h \
		Bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h \
		Bullet/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h \
		Bullet/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h \
		Bullet/BulletCollision/BroadphaseCollision/btDbvt.h \
		Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h \
		Bullet/BulletCollision/BroadphaseCollision/btDispatcher.h \
		Bullet/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h \
		Bullet/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h \
		Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h \
		Bullet/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h \
		Bullet/BulletCollision/BroadphaseCollision/btQuantizedBvh.h \
		Bullet/BulletCollision/Gimpact/btGImpactBvh.cpp\
		Bullet/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp\
		Bullet/BulletCollision/Gimpact/btTriangleShapeEx.cpp\
		Bullet/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp\
		Bullet/BulletCollision/Gimpact/btGImpactShape.cpp\
		Bullet/BulletCollision/Gimpact/gim_box_set.cpp\
		Bullet/BulletCollision/Gimpact/gim_contact.cpp\
		Bullet/BulletCollision/Gimpact/gim_memory.cpp\
		Bullet/BulletCollision/Gimpact/gim_tri_collision.cpp

libBulletDynamics_la_SOURCES := \
		Bullet/BulletDynamics/Dynamics/btContinuousDynamicsWorld.cpp \
		Bullet/BulletDynamics/Dynamics/btRigidBody.cpp \
		Bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp \
		Bullet/BulletDynamics/Dynamics/Bullet-C-API.cpp \
		Bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btContactConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp \
		Bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp \
		Bullet/BulletDynamics/Vehicle/btWheelInfo.cpp \
		Bullet/BulletDynamics/Vehicle/btRaycastVehicle.cpp \
		Bullet/BulletDynamics/Character/btKinematicCharacterController.cpp \
		Bullet/BulletDynamics/Character/btKinematicCharacterController.h \
		Bullet/BulletDynamics/Character/btCharacterControllerInterface.h \
		Bullet/BulletDynamics/Dynamics/btActionInterface.h \
		Bullet/BulletDynamics/Dynamics/btContinuousDynamicsWorld.h \
		Bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h \
		Bullet/BulletDynamics/Dynamics/btRigidBody.h \
		Bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h \
		Bullet/BulletDynamics/Dynamics/btDynamicsWorld.h \
		Bullet/BulletDynamics/ConstraintSolver/btSolverBody.h \
		Bullet/BulletDynamics/ConstraintSolver/btConstraintSolver.h \
		Bullet/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btTypedConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btContactSolverInfo.h \
		Bullet/BulletDynamics/ConstraintSolver/btContactConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btJacobianEntry.h \
		Bullet/BulletDynamics/ConstraintSolver/btSolverConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h \
		Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btSliderConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btHingeConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btHinge2Constraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btUniversalConstraint.h \
		Bullet/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.h \
		Bullet/BulletDynamics/Vehicle/btVehicleRaycaster.h \
		Bullet/BulletDynamics/Vehicle/btRaycastVehicle.h \
		Bullet/BulletDynamics/Vehicle/btWheelInfo.h

libBulletSoftBody_la_SOURCES := \
		Bullet/BulletSoftBody/btDefaultSoftBodySolver.cpp \
		Bullet/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp \
		Bullet/BulletSoftBody/btSoftBody.cpp \
		Bullet/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp \
		Bullet/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp \
		Bullet/BulletSoftBody/btSoftRigidDynamicsWorld.cpp \
		Bullet/BulletSoftBody/btSoftBodyHelpers.cpp \
		Bullet/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp \
		Bullet/BulletSoftBody/btSparseSDF.h \
		Bullet/BulletSoftBody/btSoftRigidCollisionAlgorithm.h \
		Bullet/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h \
		Bullet/BulletSoftBody/btSoftBody.h \
		Bullet/BulletSoftBody/btSoftSoftCollisionAlgorithm.h \
		Bullet/BulletSoftBody/btSoftBodyInternals.h \
		Bullet/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.h \
		Bullet/BulletSoftBody/btSoftRigidDynamicsWorld.h \
		Bullet/BulletSoftBody/btSoftBodyHelpers.h

libaesGladman_la_SOURCES := \
		Irrlicht/aesGladman/aescrypt.cpp \
		Irrlicht/aesGladman/aeskey.cpp \
		Irrlicht/aesGladman/aestab.cpp \
		Irrlicht/aesGladman/fileenc.cpp \
		Irrlicht/aesGladman/hmac.cpp \
		Irrlicht/aesGladman/prng.cpp \
		Irrlicht/aesGladman/pwd2key.cpp \
		Irrlicht/aesGladman/sha1.cpp \
		Irrlicht/aesGladman/sha2.cpp

libbzip2_la_SOURCES := \
		Irrlicht/bzip2/blocksort.c \
		Irrlicht/bzip2/huffman.c \
		Irrlicht/bzip2/crctable.c \
		Irrlicht/bzip2/randtable.c \
		Irrlicht/bzip2/bzcompress.c \
		Irrlicht/bzip2/decompress.c \
		Irrlicht/bzip2/bzlib.c
		
liblzma_la_SOURCES := Irrlicht/lzma/LzmaDec.c

libjpeg_la_SOURCES := \
		Irrlicht/jpeglib/jcapimin.c \
		Irrlicht/jpeglib/jcapistd.c \
		Irrlicht/jpeglib/jccoefct.c \
		Irrlicht/jpeglib/jccolor.c \
		Irrlicht/jpeglib/jcdctmgr.c \
		Irrlicht/jpeglib/jchuff.c \
		Irrlicht/jpeglib/jcinit.c \
		Irrlicht/jpeglib/jcmainct.c \
		Irrlicht/jpeglib/jcmarker.c \
		Irrlicht/jpeglib/jcmaster.c \
		Irrlicht/jpeglib/jcomapi.c \
		Irrlicht/jpeglib/jcparam.c \
		Irrlicht/jpeglib/jcprepct.c \
		Irrlicht/jpeglib/jcsample.c \
		Irrlicht/jpeglib/jctrans.c \
		Irrlicht/jpeglib/jdapimin.c \
		Irrlicht/jpeglib/jdapistd.c \
		Irrlicht/jpeglib/jdatadst.c \
		Irrlicht/jpeglib/jdatasrc.c \
		Irrlicht/jpeglib/jdcoefct.c \
		Irrlicht/jpeglib/jdcolor.c \
		Irrlicht/jpeglib/jddctmgr.c \
		Irrlicht/jpeglib/jdhuff.c \
		Irrlicht/jpeglib/jdinput.c \
		Irrlicht/jpeglib/jdmainct.c \
		Irrlicht/jpeglib/jdmarker.c \
		Irrlicht/jpeglib/jdmaster.c \
		Irrlicht/jpeglib/jdmerge.c \
		Irrlicht/jpeglib/jdpostct.c \
		Irrlicht/jpeglib/jdsample.c \
		Irrlicht/jpeglib/jdtrans.c \
		Irrlicht/jpeglib/jerror.c \
		Irrlicht/jpeglib/jfdctflt.c \
		Irrlicht/jpeglib/jfdctfst.c \
		Irrlicht/jpeglib/jfdctint.c \
		Irrlicht/jpeglib/jidctflt.c \
		Irrlicht/jpeglib/jidctfst.c \
		Irrlicht/jpeglib/jidctint.c \
		Irrlicht/jpeglib/jmemmgr.c \
		Irrlicht/jpeglib/jmemnobs.c \
		Irrlicht/jpeglib/jquant1.c \
		Irrlicht/jpeglib/jquant2.c \
		Irrlicht/jpeglib/jutils.c \
		Irrlicht/jpeglib/jcarith.c \
		Irrlicht/jpeglib/jdarith.c \
		Irrlicht/jpeglib/jaricom.c
		
libzlib_la_SOURCES := \
		Irrlicht/zlib/adler32.c \
		Irrlicht/zlib/compress.c \
		Irrlicht/zlib/crc32.c \
		Irrlicht/zlib/deflate.c \
		Irrlicht/zlib/inffast.c \
		Irrlicht/zlib/inflate.c \
		Irrlicht/zlib/inftrees.c \
		Irrlicht/zlib/trees.c \
		Irrlicht/zlib/uncompr.c \
		Irrlicht/zlib/zutil.c
		
libpng_la_SOURCES := \
		Irrlicht/libpng/png.c \
		Irrlicht/libpng/pngerror.c \
		Irrlicht/libpng/pngget.c \
		Irrlicht/libpng/pngmem.c \
		Irrlicht/libpng/pngpread.c \
		Irrlicht/libpng/pngread.c \
		Irrlicht/libpng/pngrio.c \
		Irrlicht/libpng/pngrtran.c \
		Irrlicht/libpng/pngrutil.c \
		Irrlicht/libpng/pngset.c \
		Irrlicht/libpng/pngtrans.c \
		Irrlicht/libpng/pngwio.c \
		Irrlicht/libpng/pngwrite.c \
		Irrlicht/libpng/pngwtran.c \
		Irrlicht/libpng/pngwutil.c

libIrrlicht_la_SOURCES := \
		Irrlicht/CParticleSystemSceneNode.cpp \
		Irrlicht/CMD3MeshFileLoader.cpp \
		Irrlicht/CDefaultSceneNodeFactory.cpp \
		Irrlicht/importgl.cpp \
		Irrlicht/CImageWriterPCX.cpp \
		Irrlicht/os.cpp \
		Irrlicht/COgreMeshFileLoader.cpp \
		Irrlicht/CParticlePointEmitter.cpp \
		Irrlicht/CTRGouraud2.cpp \
		Irrlicht/CTriangleBBSelector.cpp \
		Irrlicht/CTRTextureFlatWire.cpp \
		Irrlicht/COGLES2NormalMapRenderer.cpp \
		Irrlicht/CSoftwareTexture.cpp \
		Irrlicht/irrXML.cpp \
		Irrlicht/CTRTextureGouraud.cpp \
		Irrlicht/CTextSceneNode.cpp \
		Irrlicht/CPLYMeshFileLoader.cpp \
		Irrlicht/CParticleSphereEmitter.cpp \
		Irrlicht/CTerrainTriangleSelector.cpp \
		Irrlicht/CCSMLoader.cpp \
		Irrlicht/CGUIModalScreen.cpp \
		Irrlicht/CTRTextureLightMap2_Add.cpp \
		Irrlicht/CImageLoaderPPM.cpp \
		Irrlicht/CTRTextureFlat.cpp \
		Irrlicht/CSceneNodeAnimatorRotation.cpp \
		Irrlicht/COBJMeshWriter.cpp \
		Irrlicht/COGLESDriver.cpp \
		Irrlicht/CTarReader.cpp \
		Irrlicht/COpenGLShaderMaterialRenderer.cpp \
		Irrlicht/CNullDriver.cpp \
		Irrlicht/CQ3LevelMesh.cpp \
		Irrlicht/CIrrDeviceAndroid.cpp \
		Irrlicht/CTRGouraudAlphaNoZ2.cpp \
		Irrlicht/CImageLoaderRGB.cpp \
		Irrlicht/CLightSceneNode.cpp \
		Irrlicht/CTRTextureGouraudNoZ2.cpp \
		Irrlicht/CImageLoaderPCX.cpp \
		Irrlicht/CGUIImageList.cpp \
		Irrlicht/CImageWriterJPG.cpp \
		Irrlicht/CGUIStaticText.cpp \
		Irrlicht/CImage.cpp \
		Irrlicht/CGUIWindow.cpp \
		Irrlicht/CSceneCollisionManager.cpp \
		Irrlicht/CTRTextureGouraudAlpha.cpp \
		Irrlicht/CImageLoaderJPG.cpp \
		Irrlicht/CParticleAnimatedMeshSceneNodeEmitter.cpp \
		Irrlicht/CIrrDeviceIPhone.cpp \
		Irrlicht/CGUISpinBox.cpp \
		Irrlicht/CCameraSceneNode.cpp \
		Irrlicht/CGUIButton.cpp \
		Irrlicht/CSphereSceneNode.cpp \
		Irrlicht/CCubeSceneNode.cpp \
		Irrlicht/CMS3DMeshFileLoader.cpp \
		Irrlicht/CBillboardSceneNode.cpp \
		Irrlicht/CParticleBoxEmitter.cpp \
		Irrlicht/CGUIMeshViewer.cpp \
		Irrlicht/CD3D9Texture.cpp \
		Irrlicht/CTRTextureBlend.cpp \
		Irrlicht/CTRGouraud.cpp \
		Irrlicht/CVolumeLightSceneNode.cpp \
		Irrlicht/CGUIEditBox.cpp \
		Irrlicht/CWriteFile.cpp \
		Irrlicht/CTRTextureLightMap2_M4.cpp \
		Irrlicht/CTRTextureLightMap2_M2.cpp \
		Irrlicht/CTRFlatWire.cpp \
		Irrlicht/CLWOMeshFileLoader.cpp \
		Irrlicht/CDummyTransformationSceneNode.cpp \
		Irrlicht/CMY3DMeshFileLoader.cpp \
		Irrlicht/CSkinnedMesh.cpp \
		Irrlicht/CTriangleSelector.cpp \
		Irrlicht/CIrrDeviceStub.cpp \
		Irrlicht/CIrrDeviceWinCE.cpp \
		Irrlicht/C3DSMeshFileLoader.cpp \
		Irrlicht/CZipReader.cpp \
		Irrlicht/CSceneNodeAnimatorFlyCircle.cpp \
		Irrlicht/CSceneNodeAnimatorCameraMaya.cpp \
		Irrlicht/CMetaTriangleSelector.cpp \
		Irrlicht/CMemoryFile.cpp \
		Irrlicht/CImageWriterPSD.cpp \
		Irrlicht/CIrrMeshFileLoader.cpp \
		Irrlicht/CTerrainSceneNode.cpp \
		Irrlicht/IBurningShader.cpp \
		Irrlicht/CSkyBoxSceneNode.cpp \
		Irrlicht/COGLES2Driver.cpp \
		Irrlicht/CGUISkin.cpp \
		Irrlicht/CFileList.cpp \
		Irrlicht/COBJMeshFileLoader.cpp \
		Irrlicht/CGUIToolBar.cpp \
		Irrlicht/CDefaultSceneNodeAnimatorFactory.cpp \
		Irrlicht/CSTLMeshFileLoader.cpp \
		Irrlicht/CParticleFadeOutAffector.cpp \
		Irrlicht/CMeshCache.cpp \
		Irrlicht/CXMeshFileLoader.cpp \
		Irrlicht/CZBuffer.cpp \
		Irrlicht/COpenGLParallaxMapRenderer.cpp \
		Irrlicht/CD3D9ParallaxMapRenderer.cpp \
		Irrlicht/CTRTextureGouraud2.cpp \
		Irrlicht/CTRTextureLightMap2_M1.cpp \
		Irrlicht/CTRTextureGouraudWire.cpp \
		Irrlicht/CLimitReadFile.cpp \
		Irrlicht/CMeshSceneNode.cpp \
		Irrlicht/CTRGouraudWire.cpp \
		Irrlicht/CTRTextureGouraudVertexAlpha2.cpp \
		Irrlicht/COctreeSceneNode.cpp \
		Irrlicht/CFileSystem.cpp \
		Irrlicht/CLMTSMeshFileLoader.cpp \
		Irrlicht/CColladaFileLoader.cpp \
		Irrlicht/CLogger.cpp \
		Irrlicht/CImageWriterBMP.cpp \
		Irrlicht/COpenGLNormalMapRenderer.cpp \
		Irrlicht/CColladaMeshWriter.cpp \
		Irrlicht/CGUIMenu.cpp \
		Irrlicht/CGUICheckBox.cpp \
		Irrlicht/CD3D9HLSLMaterialRenderer.cpp \
		Irrlicht/CGUIInOutFader.cpp \
		Irrlicht/CSceneManager.cpp \
		Irrlicht/CSceneNodeAnimatorFlyStraight.cpp \
		Irrlicht/CTRTextureDetailMap2.cpp \
		Irrlicht/CImageLoaderPNG.cpp \
		Irrlicht/CXMLWriter.cpp \
		Irrlicht/CGUITreeView.cpp \
		Irrlicht/CShadowVolumeSceneNode.cpp \
		Irrlicht/CParticleRotationAffector.cpp \
		Irrlicht/CAnimatedMeshMD3.cpp \
		Irrlicht/CTRTextureWire2.cpp \
		Irrlicht/CParticleGravityAffector.cpp \
		Irrlicht/CTRTextureLightMapGouraud2_M4.cpp \
		Irrlicht/CBurningShader_Raster_Reference.cpp \
		Irrlicht/CImageLoaderTGA.cpp \
		Irrlicht/CIrrDeviceLinux.cpp \
		Irrlicht/CEmptySceneNode.cpp \
		Irrlicht/CGUITable.cpp \
		Irrlicht/CTRTextureGouraudNoZ.cpp \
		Irrlicht/CPLYMeshWriter.cpp \
		Irrlicht/CImageLoaderWAL.cpp \
		Irrlicht/CBSPMeshFileLoader.cpp \
		Irrlicht/CIrrDeviceWin32.cpp \
		Irrlicht/COGLES2Renderer2D.cpp \
		Irrlicht/Irrlicht.cpp \
		Irrlicht/CTRTextureGouraudAdd.cpp \
		Irrlicht/CQuake3ShaderSceneNode.cpp \
		Irrlicht/CParticleCylinderEmitter.cpp \
		Irrlicht/CMD2MeshFileLoader.cpp \
		Irrlicht/CGUIContextMenu.cpp \
		Irrlicht/CImageLoaderBMP.cpp \
		Irrlicht/CTRFlat.cpp \
		Irrlicht/CAttributes.cpp \
		Irrlicht/CSceneNodeAnimatorCollisionResponse.cpp \
		Irrlicht/CGeometryCreator.cpp \
		Irrlicht/COCTLoader.cpp \
		Irrlicht/CReadFile.cpp \
		Irrlicht/CD3D9ShaderMaterialRenderer.cpp \
		Irrlicht/CParticleMeshEmitter.cpp \
		Irrlicht/CSceneNodeAnimatorTexture.cpp \
		Irrlicht/CSoftwareTexture2.cpp \
		Irrlicht/CIrrMeshWriter.cpp \
		Irrlicht/COGLESExtensionHandler.cpp \
		Irrlicht/CColorConverter.cpp \
		Irrlicht/CSoftwareDriver.cpp \
		Irrlicht/CMeshManipulator.cpp \
		Irrlicht/CGUIFont.cpp \
		Irrlicht/COctreeTriangleSelector.cpp \
		Irrlicht/CWaterSurfaceSceneNode.cpp \
		Irrlicht/COGLES2Texture.cpp \
		Irrlicht/CDMFLoader.cpp \
		Irrlicht/CVideoModeList.cpp \
		Irrlicht/CD3D8NormalMapRenderer.cpp \
		Irrlicht/CTRTextureGouraudAlphaNoZ.cpp \
		Irrlicht/CGUIMessageBox.cpp \
		Irrlicht/CGUISpriteBank.cpp \
		Irrlicht/CGUIScrollBar.cpp \
		Irrlicht/CDefaultGUIElementFactory.cpp \
		Irrlicht/CParticleScaleAffector.cpp \
		Irrlicht/CSceneNodeAnimatorDelete.cpp \
		Irrlicht/CGUIColorSelectDialog.cpp \
		Irrlicht/COpenGLExtensionHandler.cpp \
		Irrlicht/CIrrDeviceConsole.cpp \
		Irrlicht/CFPSCounter.cpp \
		Irrlicht/CD3D9NormalMapRenderer.cpp \
		Irrlicht/CGUIEnvironment.cpp \
		Irrlicht/CTRTextureGouraudAddNoZ2.cpp \
		Irrlicht/CD3D8ShaderMaterialRenderer.cpp \
		Irrlicht/CDepthBuffer.cpp \
		Irrlicht/CParticleRingEmitter.cpp \
		Irrlicht/CMountPointReader.cpp \
		Irrlicht/CNPKReader.cpp \
		Irrlicht/CGUIImage.cpp \
		Irrlicht/COpenGLSLMaterialRenderer.cpp \
		Irrlicht/CBoneSceneNode.cpp \
		Irrlicht/CPakReader.cpp \
		Irrlicht/CSkyDomeSceneNode.cpp \
		Irrlicht/CImageWriterPPM.cpp \
		Irrlicht/CXMLReader.cpp \
		Irrlicht/CGUIFileOpenDialog.cpp \
		Irrlicht/COGLES2ParallaxMapRenderer.cpp \
		Irrlicht/CGUITabControl.cpp \
		Irrlicht/COpenGLDriver.cpp \
		Irrlicht/CAnimatedMeshMD2.cpp \
		Irrlicht/COGLES2FixedPipelineShader.cpp \
		Irrlicht/CImageWriterTGA.cpp \
		Irrlicht/CImageLoaderPSD.cpp \
		Irrlicht/CB3DMeshFileLoader.cpp \
		Irrlicht/CParticleAttractionAffector.cpp \
		Irrlicht/CIrrDeviceFB.cpp \
		Irrlicht/CSceneNodeAnimatorFollowSpline.cpp \
		Irrlicht/COGLES2ExtensionHandler.cpp \
		Irrlicht/CImageWriterPNG.cpp \
		Irrlicht/CD3D8ParallaxMapRenderer.cpp \
		Irrlicht/CSoftwareDriver2.cpp \
		Irrlicht/CD3D8Texture.cpp \
		Irrlicht/COpenGLTexture.cpp \
		Irrlicht/COGLES2SLMaterialRenderer.cpp \
		Irrlicht/CD3D8Driver.cpp \
		Irrlicht/CD3D9Driver.cpp \
		Irrlicht/CSTLMeshWriter.cpp \
		Irrlicht/CIrrDeviceSDL.cpp \
		Irrlicht/COGLESTexture.cpp \
		Irrlicht/CGUIListBox.cpp \
		Irrlicht/CTRTextureGouraudAdd2.cpp \
		Irrlicht/CAnimatedMeshSceneNode.cpp \
		Irrlicht/CSceneNodeAnimatorCameraFPS.cpp \
		Irrlicht/CTRGouraudAlpha2.cpp \
		Irrlicht/CGUIComboBox.cpp

libirrBullet_la_SOURCES := \
		irrBullet/boxshape.cpp \
		irrBullet/bulletworld.cpp \
		irrBullet/bvhtrianglemeshshape.cpp \
		irrBullet/collisioncallbackinformation.cpp \
		irrBullet/collisionobjectaffectorattract.cpp \
		irrBullet/collisionobjectaffector.cpp \
		irrBullet/collisionobjectaffectordelete.cpp \
		irrBullet/collisionobject.cpp \
		irrBullet/collisionshape.cpp \
		irrBullet/convexhullshape.cpp \
		irrBullet/gimpactmeshshape.cpp \
		irrBullet/irrbulletcommon.cpp \
		irrBullet/irrbullet.cpp \
		irrBullet/liquidbody.cpp \
		irrBullet/motionstate.cpp \
		irrBullet/physicsdebug.cpp \
		irrBullet/raycastvehicle.cpp \
		irrBullet/rigidbody.cpp \
		irrBullet/softbody.cpp \
		irrBullet/sphereshape.cpp \
		irrBullet/trianglemeshshape.cpp

LOCAL_SRC_FILES := \
		$(libLinearMath_la_SOURCES) \
		$(libBulletCollision_la_SOURCES) \
		$(libBulletDynamics_la_SOURCES) \
		$(libBulletSoftBody_la_SOURCES) \
		$(libaesGladman_la_SOURCES) \
		$(liblzma_la_SOURCES) \
		$(libjpeg_la_SOURCES) \
		$(libzlib_la_SOURCES) \
		$(libpng_la_SOURCES) \
		$(libbzip2_la_SOURCES) \
		$(libIrrlicht_la_SOURCES) \
		$(libirrBullet_la_SOURCES)

LOCAL_ARM_MODE   := arm 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O3 -DANDROID_NDK -DDISABLE_IMPORTGL 
#LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog -lGLESv2

include $(BUILD_SHARED_LIBRARY)