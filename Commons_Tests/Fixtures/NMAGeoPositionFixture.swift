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

import NMAKit

enum NMAGeoPositionFixture {

    static func berlinCenterStationary() -> NMAGeoPosition? {
        return NMAGeoPosition(
            coordinates: NMAGeoCoordinatesFixture.berlinCenter(),
            speed: 0,
            course: 0,
            accuracy: 1
        )
    }
}
