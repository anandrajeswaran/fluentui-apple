//
//  Copyright © 2018 Microsoft Corporation. All rights reserved.
//

import UIKit

// MARK: MSEasyTapButton

open class MSEasyTapButton: UIButton {
    open var minTapTargetSize = CGSize(width: 44.0, height: 44.0)

    override open func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let growX = max(0, (minTapTargetSize.width - bounds.size.width) / 2)
        let growY = max(0, (minTapTargetSize.height - bounds.size.height) / 2)

        return bounds.insetBy(dx: -growX, dy: -growY).contains(point)
    }
}
