/**
 * Copyright IBM Corporation 2015
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
import ObjectMapper

extension LanguageTranslationV2 {
    
    internal struct LanguageTranslationError: WatsonError {
        var errorCode: Int!
        var errorMessage: String!
        
        var nsError: NSError {
            let domain = Constants.errorDomain
            let userInfo = [NSLocalizedDescriptionKey: errorMessage]
            return NSError(domain: domain, code: errorCode, userInfo: userInfo)
        }
        
        init() {}
        
        init?(_ map: Map) {}
        
        mutating func mapping(map: Map) {
            errorCode    <- map["error_code"]
            errorMessage <- map["error_message"]
        }
    }
}