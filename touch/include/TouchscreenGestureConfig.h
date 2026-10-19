/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#include "TouchscreenGesture.h"

namespace aidl {
namespace vendor {
namespace lineage {
namespace touch {

const int TouchscreenGesture::kSupportedGestures = makeBitField(
        kGestureUpVee, kGestureCircle, kGestureDoubleSwipe,
        kGestureM, kGestureW, kGestureSingleTap);

}  // namespace touch
}  // namespace lineage
}  // namespace vendor
}  // namespace aidl
