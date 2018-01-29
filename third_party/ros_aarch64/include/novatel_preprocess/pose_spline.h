/************************************************************************
 *
 * Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
 *
 ************************************************************************/
/**
 * @file pose_spline.cpp
 * @author car-os
 * @date 2016/03/8
 *
 pose conversions. It extends the Eigen Geometry and Spline module and
 makes use of some of the Google Ceres rotation operation functions.

 Contents:
 * Pose util functions
 * Pose spline and interpolation

 Pose Util Functions
 -------------------
 3D Rotations in this frameworks are denoted by either Eigen::Matrix,
 Eigen::AngleAxis or Eigen::Quaternion. A full 6DoF pose is denoted by
 a 4x4 matrix, a 6x1 vector or a 7x1 vector.

 The 6x1 pose vector is formed by [a_0, a_1, a_2, x, y, z], in which
 a_i is the 3x1 angle axis vector and [x, y, z] is the translation.

 The 7x1 pose vector is formed by [q_x, q_y, q_z, q_w, x, y, z], in which
 q_* is the quaternion vector.

 Note that in Eigen, quaternion saves its value in the order of
 [q_x, q_y, q_z, q_w], while you construct it by
 Eigen::Quaterion q(w, x, y, z). Also note that in Ceres, quaternion is
 array/vector is formed by w, x, y, z. [:(]

 Pose Spline and Interpolation
 --------------------
 novatel_preprocess::PoseSpline denotes a handy spline interface for
 6DoF pose interpolation over time.
 This class inherits the spline functinality of Eigen::Spline
 and provides extra functionality to denote pose location, velocity.
 acceleration and etc.

 The SplineFitting2 interface extends Eigen::SplineFitting2 in the
 following three aspects:
 * Fixed a bug in the Eigen::KnotAveraging which the Eigen community does
 not accept.
 * Changed the fitting solver from dense to sparse.
 * Added an over-constraint interpolation beside the original
 exact-constraint interpolation

 The coding style in this file mimics the Eigen coding style.
 **/

#ifndef NOVATEL_PREPROCESS_POSE_SPLINE_H
#define NOVATEL_PREPROCESS_POSE_SPLINE_H

#include <math.h>
#include <iostream>
#include <iomanip>
#include <vector>
#include <Eigen/Eigen>
#include <unsupported/Eigen/Splines>
#include <Eigen/Sparse>

#include "ceres_rotation.h"

namespace novatel_preprocess {

const double ANGLE_AXIS_ILL_POSED_THRESHOLD = 1e-10;

template<typename Scalar>
inline Scalar sqr(Scalar v) {
    return v * v;
}

template<typename Scalar>
inline Scalar cubic(Scalar v) {
    return v * v * v;
}

// Given an angle axis vector a = [a_0, a_1, a_2], a / |a| * (|a| + 2 * k * pi)
// also denote the same rotaiton. This function formalizes this inconsistency.
template<typename Scalar>
inline void formalizeAngleAx(Scalar a[3]) {
    Scalar q[4];
    ceres::AngleAxisToQuaternion(a, q);
    ceres::QuaternionToAngleAxis(q, a);
}

template<typename Scalar>
inline void formalizeAngleAx(Eigen::Matrix<Scalar, 3, 1>& a) {
    formalizeAngleAx(a.data());
}

template<typename Derived>
inline Eigen::Quaternion<typename Derived::Scalar> stableAngleAxToQuat(
        const Eigen::MatrixBase<Derived>& a) {
    typename Derived::Scalar res[4];
    Eigen::Matrix<typename Derived::Scalar, Eigen::Dynamic, Eigen::Dynamic> tmp(a);
    ceres::AngleAxisToQuaternion(tmp.data(), res);
    return Eigen::Quaternion<typename Derived::Scalar>(res[0], res[1], res[2], res[3]);
}

template<typename Derived>
inline Eigen::Matrix<typename Derived::Scalar, 3, 3> stableAngleAxToMat(
        const Eigen::MatrixBase<Derived>& a) {
    typename Derived::Scalar res[9];
    Eigen::Matrix<typename Derived::Scalar, Eigen::Dynamic, Eigen::Dynamic> tmp(a);
    ceres::AngleAxisToRotationMatrix(tmp.data(), ceres::ColumnMajorAdapter3x3(res));
    return Eigen::Matrix<typename Derived::Scalar, 3, 3>(res);
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 3, 1> stableQuatToAngleAx(const Eigen::Quaternion<Scalar>& q) {
    Scalar quat[4] = {q.w(), q.x(), q.y(), q.z()};
    Eigen::Matrix<Scalar, 3, 1> a;
    ceres::QuaternionToAngleAxis(quat, a.data());
    return a;
}

template<typename Derived>
inline Eigen::Matrix<typename Derived::Scalar, 3, 1> stableMatToAngleAx(
        const Eigen::MatrixBase<Derived>& R) {
    typename Derived::Scalar res[3];
    Eigen::Matrix<typename Derived::Scalar, Eigen::Dynamic, Eigen::Dynamic> tmp(R);
    const typename Derived::Scalar* data = tmp.data();
    ceres::RotationMatrixToAngleAxis(ceres::ColumnMajorAdapter3x3(data), res);
    return Eigen::Matrix<typename Derived::Scalar, 3, 1>(res);
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 4, 3> jacobAngleAx43(const Eigen::Matrix<Scalar, 3, 1>& a) {
    Scalar norm = a.norm();

    if (norm < Scalar(ANGLE_AXIS_ILL_POSED_THRESHOLD)) {
        // TODO(libo): Approx with Taylor series here.
        // See ceres/rotation.h
        std::cerr << "WARNING: Angle-Axis vector is near 0. "
                "An NaN Jacobian matrix is returned for double / float "
                "and a zeros Jacobian for int. " << std::endl;
        return Eigen::Matrix<Scalar, 4, 3>::Constant(Scalar(NAN));
    }

    Scalar normCubic = cubic(norm);

    Eigen::Matrix<Scalar, 4, 3> Jva;
    Jva << 1 / norm - sqr(a[0]) / normCubic, -(a[0] * a[1]) / normCubic, -(a[0] * a[2]) / normCubic,
            -(a[0] * a[1]) / normCubic, 1 / norm - sqr(a[1]) / normCubic, -(a[1] * a[2]) / normCubic,
            -(a[0] * a[2]) / normCubic, -(a[1] * a[2]) / normCubic, 1 / norm - sqr(a[2]) / normCubic,
            a[0] / norm, a[1] / norm, a[2] / norm;
    return Jva;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 4, 3> jacobQuatAngleAx(const Eigen::Matrix<Scalar, 3, 1>& a) {
    // Denote q as a quaternion,
    // a as a 3x1 angle axis vector,
    // v as (u0, u1, u2, \theta),
    // where \theta = ||a|| and u = a / ||a||.
    Scalar theta = a.norm();
    Scalar s = sin(theta / 2);
    Scalar c = cos(theta / 2);
    Eigen::Matrix<Scalar, 3, 1> u = a.normalized();
    Eigen::Matrix<Scalar, 4, 4> Jqv;
    Jqv << s, 0, 0, u(0) * 0.5 * c, 0, s, 0, u(1) * 0.5 * c, 0, 0, s, u(2) * 0.5 * c, 0, 0, 0, -0.5
            * s;

    Eigen::Matrix<Scalar, 4, 3> Jva = jacobAngleAx43(a);
    Eigen::Matrix<Scalar, 4, 3> Jqr = Jqv * Jva;
    return Jqr;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 3, 1> angularVelocQuat(const Eigen::Quaternion<Scalar>& q,
        const Eigen::Quaternion<Scalar>& dq) {
    // http://en.wikipedia.org/wiki/Rotation_formalisms_in_three_dimensions
    Eigen::Quaternion<Scalar> prod = dq * q.inverse();
    Eigen::Matrix<Scalar, 3, 1> w = prod.coeffs().head(3) * 2.0;
    return w;
}

template<typename Scalar>
Eigen::Matrix<Scalar, 3, 1> angularVelocAngleAx(const Eigen::Matrix<Scalar, 3, 1>& a,
        const Eigen::Matrix<Scalar, 3, 1>& da) {
    // http://rotations.berkeley.edu/?page_id=662, Eq 7
    const Scalar theta = a.norm();
    const Eigen::Matrix<Scalar, 3, 1> u = a.normalized();

    Eigen::Matrix<Scalar, 4, 3> Jva = jacobAngleAx43(a);
    Eigen::Matrix<Scalar, 4, 1> Jvt = Jva * da;

    Eigen::Matrix<Scalar, 3, 1> du = Jvt.head(3);
    Eigen::Matrix<Scalar, 3, 1> w = Jvt(3) * u + du * sin(theta) + u.cross(du) * (1.0 - cos(theta));

    return w;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 6, 1> poseVector6x(const Eigen::Matrix<Scalar, 7, 1>& pose) {
    Eigen::Quaternion<Scalar> quat(pose.data());
    Eigen::Matrix<Scalar, 6, 1> vec;
    vec.head(3) = stableQuatToAngleAx(quat);
    vec.tail(3) = pose.tail(3);
    return vec;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 7, 1> poseVector7x(const Eigen::Matrix<Scalar, 6, 1>& pose) {
    Eigen::Matrix<Scalar, 3, 1> a = pose.head(3);
    Eigen::Quaternion<Scalar> q = stableAngleAxToQuat(a);
    Eigen::Matrix<Scalar, 7, 1> vec;
    vec.head(4) = q.coeffs();
    vec.tail(3) = pose.tail(3);
    return vec;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 7, 1> poseCompose(const Eigen::Matrix<Scalar, 7, 1>& base,
        const Eigen::Matrix<Scalar, 7, 1>& rel) {
    Eigen::Quaternion<Scalar> qb(base.data()), qr(rel.data());
    Eigen::Quaternion<Scalar> qo = qb * qr;
    Eigen::Matrix<Scalar, 7, 1> other;
    other.head(4) = qo.coeffs();
    other.tail(3) = qb * rel.tail(3) + base.tail(3);
    return other;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 3, 1> angleAxisCompose(const Eigen::Matrix<Scalar, 3, 1>& base,
        const Eigen::Matrix<Scalar, 3, 1>& rel) {
    Eigen::Quaternion<Scalar> qb = stableAngleAxToQuat(base);
    Eigen::Quaternion<Scalar> qr = stableAngleAxToQuat(rel);
    Eigen::Quaternion<Scalar> qo = qb * qr;
    Eigen::Matrix<Scalar, 3, 1> other = stableQuatToAngleAx(qo);
    return other;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 6, 1> poseCompose(const Eigen::Matrix<Scalar, 6, 1>& base,
        const Eigen::Matrix<Scalar, 6, 1>& rel) {
    Eigen::Matrix<Scalar, 7, 1> compose = poseCompose(poseVector7x(base), poseVector7x(rel));
    return poseVector6x<Scalar>(compose);
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 7, 1> poseRelative(const Eigen::Matrix<Scalar, 7, 1>& base,
        const Eigen::Matrix<Scalar, 7, 1>& other) {
    Eigen::Quaternion<Scalar> qb(base.data()), qo(other.data());
    Eigen::Quaternion<Scalar> qr = qb.conjugate() * qo;
    Eigen::Matrix<Scalar, 7, 1> rel;
    rel.head(4) = qr.coeffs();
    rel.tail(3) = qb.conjugate() * (other.tail(3) - base.tail(3));
    return rel;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 3, 1> angleAxisRelative(const Eigen::Matrix<Scalar, 3, 1>& base,
        const Eigen::Matrix<Scalar, 3, 1>& other) {
    Eigen::Quaternion<Scalar> qb = stableAngleAxToQuat(base), qo = stableAngleAxToQuat(other);
    Eigen::Quaternion<Scalar> qr = qb.conjugate() * qo;
    Eigen::Matrix<Scalar, 3, 1> rel = stableQuatToAngleAx(qr);
    return rel;
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 6, 1> poseRelative(const Eigen::Matrix<Scalar, 6, 1>& base,
        const Eigen::Matrix<Scalar, 6, 1>& other) {
    Eigen::Matrix<Scalar, 7, 1> relative = poseRelative<Scalar>(poseVector7x(base),
            poseVector7x(other));
    return poseVector6x(relative);
}

template<typename Scalar>
inline Eigen::Matrix<Scalar, 6, 1> poseInverse(const Eigen::Matrix<Scalar, 6, 1>& pose) {
    Eigen::Matrix<Scalar, 6, 1> zero = Eigen::Matrix<Scalar, 6, 1>::Zero();
    return poseRelative(pose, zero);
}

template<typename T>
void angleAxToRollPitchYaw(const Eigen::Matrix<T, 3, 1>& aa, T& roll, T& pitch, T& yaw) {
    Eigen::Matrix<T, 3, 3> m = stableAngleAxToMat(aa);
    matrixToRollPitchYaw(m, roll, pitch, yaw);
}

template<typename _Scalar, int _Degree>
class PoseSpline : public Eigen::Spline<_Scalar, 6, _Degree> {
public:
    //constexpr static double TimestampBoundGap() = 1e-3;
    inline static double TimestampBoundGap() {
        return 1e-3;
    }

    typedef _Scalar Scalar;
    enum {
        Degree = _Degree
    };
    typedef Eigen::Spline<Scalar, 6, Degree> BaseType;
    typedef Eigen::Matrix<Scalar, 6, 1> Vector6x;
    typedef Eigen::Matrix<Scalar, 7, 1> Vector7x;
    typedef Eigen::Matrix<Scalar, 3, 1> Vector3x;
    typedef Eigen::Matrix<Scalar, 3, 3> Matrix3x;
    typedef Eigen::AngleAxis<Scalar> AngleAxis3x;
    typedef Eigen::Translation<Scalar, 3> Translation3x;
    typedef Eigen::Transform<Scalar, 3, Eigen::Affine> Affine3x;
    typedef Eigen::Quaternion<Scalar> Quaternionx;

    template<int OtherDegree>
    PoseSpline(const Eigen::Spline<Scalar, 6, OtherDegree>& spline) :
            BaseType(spline) {
    }

    PoseSpline() {
        typename BaseType::ControlPointVectorType ctrls(
                BaseType::ControlPointVectorType::Zero(6,
                        (Degree == Eigen::Dynamic ? 1 : Degree + 1)));
        typename BaseType::KnotVectorType knots(1, (Degree == Eigen::Dynamic ? 2 : 2 * Degree + 2));
        BaseType(knots, ctrls);
    }

    template<typename OtherVectorType, typename OtherArrayType>
    PoseSpline(const OtherVectorType& knots, const OtherArrayType& ctrls) :
            BaseType(knots, ctrls) {
    }

    Affine3x affine3x(Scalar u) const {
        Vector3x orient = orientAngleAx(u);
        AngleAxis3x angle_axis(orient.norm(), orient.normalized());
        Affine3x affine = Translation3x(location(u)) * angle_axis;
        return affine;
    }

    Vector7x pose7x(Scalar u) const {
        Vector6x pose = this->operator()(u);
        return poseVector7x(pose);
    }

    Vector6x pose6x(Scalar u) const {
        Vector6x pose = this->operator()(u);
        formalizeAngleAx(pose.data());
        return pose;
    }

    Quaternionx orientQuat(Scalar u) const {
        return stableAngleAxToQuat(orientAngleAx(u));
    }

    Vector3x orientAngleAx(Scalar u) const {
        Vector3x a = this->operator()(u).head(3);
        formalizeAngleAx(a);
        return a;
    }

    Matrix3x orientMat(Scalar u) const {
        return stableAngleAxToMat(orientAngleAx(u));
    }

    Vector3x location(Scalar u) const {
        return this->operator()(u).tail(3);
    }
    Vector3x acceleration(Scalar u) const {
        return this->derivatives(u, 2).col(2).tail(3);
    }
    Vector3x velocity(Scalar u) const {
        return this->derivatives(u, 1).col(1).tail(3);
    }
    Vector3x angularVeloc(Scalar u) const {
        Vector3x a = orientAngleAx(u);
        Vector3x da = this->derivatives(u, 1).col(1).head(3);
        return angularVelocAngleAx(a, da);
    }
    Eigen::DenseIndex knotsSpanStart(Scalar u) const {
        return this->span(u) - this->degree();
    }
    Eigen::DenseIndex knotsSpanning() const {
        return 2 * this->degree() + 2;
    }
    Eigen::DenseIndex ctrlsSpanStart(Scalar u) const {
        return this->span(u) - this->degree();
    }
    Eigen::DenseIndex ctrlsSpanning() const {
        return this->degree() + 1;
    }
    Scalar startTime() const {
        return this->knots()(0) + TimestampBoundGap();
    }
    Scalar endTime() const {
        return this->knots()(this->knots().size() - 1) - TimestampBoundGap();
    }
};

typedef PoseSpline<double, Eigen::Dynamic> PoseSplineXd;
typedef Eigen::Matrix<double, 6, 1> Vector6d;
typedef Eigen::Matrix<double, 6, Eigen::Dynamic> Matrix6Xd;

template<typename T>
void smoothAngleJump(Eigen::Matrix<T, 6, Eigen::Dynamic>& ctrls) {
    typedef Eigen::Matrix<T, 3, 1> Vector3x;

    for (int i = 1; i < ctrls.cols(); ++i) {
        Vector3x p = ctrls.block(0, i - 1, 3, 1);
        Vector3x pn = p.normalized();
        Vector3x aa = ctrls.block(0, i, 3, 1);

        formalizeAngleAx(aa.data());

        // When aa.norm() ~ 0, we meet a problem that the rotation-axis is ill-pose
        // shifting aa by 2pi might lead to interpolation problem. Here we use a
        // small fix to assume aa has the same rotation axis as previous
        if (aa.norm() < T(0.1) && p.norm() > T(1) /* just an arbitrary gap */)
            aa = pn * pn.dot(aa);

        Vector3x n = aa.normalized();
        T angle = aa.norm();

        Vector3x d = p - aa;
        T proj = d.dot(n);
        int k = round(proj / T(2) / T(M_PI));
        ctrls.block(0, i, 3, 1) = aa + n * T(2 * k) * T(M_PI);
    }
}

}  // namespace novatel_preprocess

namespace Eigen {
// Generally the input `parameters` has increasing elements in it. However,
// it requires the first and last `degree` + 1 elements to be of the same
// parameter value to fit a spline, e.g. [0, 0, 0, 1, 2, ..., 49, 50, 50, 50].
// This function overwrite the first and last `degree` + 1 elements with the
// first and last parameter resp.
// In addition, it averages the rest middle elements within a neighborhood
// of size `degree`.
template<typename KnotVectorType>
void KnotAveraging2(const KnotVectorType& parameters, DenseIndex degree, KnotVectorType& knots,
        DenseIndex num_knots = 0) {
    if (num_knots == 0)
        num_knots = parameters.size() + degree + 1;
    assert(num_knots <= parameters.size() + degree + 1);

    knots.resize(num_knots);
    knots.segment(0, degree + 1).setConstant(parameters(0));
    knots.segment(knots.size() - degree - 1, degree + 1).setConstant(
            parameters(parameters.size() - 1));

    // len0 denotes the number of knots which need to be averaged in the 
    // source knots vector. len1 denots the number of knots after averaging.
    // len1 can be less than or equal to len0.
    DenseIndex len1 = num_knots - (degree + 1) * 2;
    DenseIndex len0 = parameters.size() - 2 - degree + 1;
    for (DenseIndex j = degree + 1; j < knots.size() - degree - 1; ++j) {
        DenseIndex i = 1 + DenseIndex(round(double((j - degree - 1) * len0) / len1));
        DenseIndex start = std::max(DenseIndex(0), i - degree / 2);
        DenseIndex count = std::min((i - start) * 2, parameters.size() - start);
        knots(j) = parameters.segment(i, degree).mean(); //parameters.segment(start, count).mean();
    }
}

template<typename SplineType>
struct SplineFitting2 : public SplineFitting<SplineType> {
    typedef typename SplineType::KnotVectorType KnotVectorType;
    template<typename PointArrayType>
    static SplineType Interpolate(const PointArrayType& pts, DenseIndex degree,
            const KnotVectorType& knot_parameters, DenseIndex num_ctrls) {
        typedef typename SplineType::KnotVectorType::Scalar Scalar;
        typedef typename SplineType::ControlPointVectorType ControlPointVectorType;

        typedef Matrix<Scalar, Dynamic, Dynamic> MatrixType;
        typedef SparseMatrix<Scalar> SparseMatrixType;
        typedef typename SparseMatrixType::Index SparseIndex;
        // typedef typename SparseMatrixType::StorageIndex SparseIndex;
        typedef Triplet<Scalar> TripletType;

        KnotVectorType knots;
        KnotAveraging2(knot_parameters, degree, knots, num_ctrls + degree + 1);

        SparseIndex n = pts.cols();
        SparseIndex m = num_ctrls;
        SparseMatrixType A(n, m);
        std::vector<TripletType> triplets;
        triplets.reserve(n * (degree + 1));
        for (SparseIndex i = 1; i < n - 1; ++i) {
            const SparseIndex span = SplineType::Span(knot_parameters[i], degree, knots);
            MatrixType bf = SplineType::BasisFunctions(knot_parameters[i], degree, knots);
            for (SparseIndex j = span - degree; j < span + 1; ++j) {
                const Scalar val = bf(j - (span - degree));
                triplets.push_back(TripletType(i, j, val));
            }
        }
        triplets.push_back(TripletType(0, 0, 1.0));
        triplets.push_back(TripletType(n - 1, m - 1, 1.0));
        A.setFromTriplets(triplets.begin(), triplets.end());

        SparseQR<SparseMatrixType, NaturalOrdering<SparseIndex> > qr(A);

        // Here, we are creating a temporary variable due to an Eigen bug.
        ControlPointVectorType ctrls = qr.solve(MatrixType(pts.transpose())).transpose();

        return SplineType(knots, ctrls);
    }

    template<typename PointArrayType>
    static SplineType Interpolate(const PointArrayType& pts, DenseIndex degree,
            const KnotVectorType& knot_parameters) {
        typedef typename SplineType::KnotVectorType::Scalar Scalar;
        typedef typename SplineType::ControlPointVectorType ControlPointVectorType;

        typedef Matrix<Scalar, Dynamic, Dynamic> MatrixType;
        typedef SparseMatrix<Scalar> SparseMatrixType;
        typedef typename SparseMatrixType::Index SparseIndex;
        typedef Triplet<Scalar> TripletType;

        KnotVectorType knots;
        KnotAveraging(knot_parameters, degree, knots);

        SparseIndex n = pts.cols();
        SparseMatrixType A(n, n);
        std::vector<TripletType> triplets;
        triplets.reserve(n * (degree + 1));
        for (SparseIndex i = 1; i < n - 1; ++i) {
            const SparseIndex span = SplineType::Span(knot_parameters[i], degree, knots);
            MatrixType bf = SplineType::BasisFunctions(knot_parameters[i], degree, knots);
            for (SparseIndex j = span - degree; j < span + 1; ++j) {
                const Scalar val = bf(j - (span - degree));
                triplets.push_back(TripletType(i, j, val));
            }
        }
        triplets.push_back(TripletType(0, 0, 1.0));
        triplets.push_back(TripletType(n - 1, n - 1, 1.0));
        A.setFromTriplets(triplets.begin(), triplets.end());

        SparseQR<SparseMatrixType, NaturalOrdering<SparseIndex> > qr(A);

        // Here, we are creating a temporary variable due to an Eigen bug.
        ControlPointVectorType ctrls = qr.solve(MatrixType(pts.transpose())).transpose();

        return SplineType(knots, ctrls);
    }
};

}  // namespace Eigen
#endif  // POSE_SPLINE_H_
