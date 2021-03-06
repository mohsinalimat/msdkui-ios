//
// Copyright (C) 2017-2018 HERE Europe B.V.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation
@testable import MSDKUI

final class NavigationManagerDelegateDispatcherMock {

    private(set) var didCallAdd = false
    private(set) var didCallRemove = false

    private(set) weak var lastPassedDelegate: NMANavigationManagerDelegate?
}

// MARK: - NavigationManagerDelegateDispatching

extension NavigationManagerDelegateDispatcherMock: NavigationManagerDelegateDispatching {

    var count: Int {
        return lastPassedDelegate == nil ? 0 : 1
    }

    var isEmpty: Bool {
        return lastPassedDelegate == nil ? false : true
    }

    func add(delegate: NMANavigationManagerDelegate) {
        didCallAdd = true
        lastPassedDelegate = delegate
    }

    func remove(delegate: NMANavigationManagerDelegate) {
        didCallRemove = true
    }
}
