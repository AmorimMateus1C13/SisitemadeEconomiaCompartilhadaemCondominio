//
//  ScrollExtension.swift
//  SECC
//
//  Created by Mateus Amorim on 07/12/22.
//

import Foundation
import UIKit

public extension UIScrollView {
    
    func scrollTo(horizontalPage: Int? = 0, verticalPage: Int? = 0, animated: Bool? = true) {
        var frame: CGRect = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage ?? 0)
        frame.origin.y = frame.size.width * CGFloat(verticalPage ?? 0)
        self.scrollRectToVisible(frame, animated: animated ?? true)
    }
}
