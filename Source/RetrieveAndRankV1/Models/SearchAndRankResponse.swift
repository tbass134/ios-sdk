/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import Freddy

// TODO: comment this model
public struct SearchAndRankResponse: JSONDecodable {
    public let numFound: Int
    public let start: Int
    public let maxScore: Int
    public let docs: [JSON]
    
    public init(json: JSON) throws {
        numFound = try json.int("numFound")
        start = try json.int("start")
        maxScore = try json.int("maxScore")
        docs = try json.array("docs")
    }
}