//  KeePassium Password Manager
//  Copyright © 2018 Andrei Popleteev <info@keepassium.com>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Foundation

extension String {
    public var isNotEmpty: Bool { return !isEmpty }
    
    /// Intended to safely zero out and erase string's data.
    /// But likely not possible in practice: https://forums.developer.apple.com/thread/4879
    /// More: https://stackoverflow.com/questions/27715985/secure-memory-for-swift-objects
    mutating func erase() {
        self.removeAll()
    }
    
    var utf8data: Data {
        return self.data(using: .utf8)! // ok to force-unwrap
    }
}
