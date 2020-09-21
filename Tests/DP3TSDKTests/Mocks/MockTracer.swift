/*
 * Copyright (c) 2020 Ubique Innovation AG <https://www.ubique.ch>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * SPDX-License-Identifier: MPL-2.0
 */

@testable import DP3TSDK
import Foundation

class MockTracer: Tracer {
    var isAuthorized: Bool = true

    var delegate: TracerDelegate?

    var state: TrackingState = .active

    var isEnabled = false

    func setEnabled(_ enabled: Bool, completionHandler: ((Error?) -> Void)?) {
        isEnabled = enabled
        completionHandler?(nil)
    }

    func addInitialisationCallback(callback: @escaping () -> Void) {
        callback()
    }
}