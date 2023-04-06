//
//  Ext+TableView.swift
//  GameMillionerGB
//
//  Created by Irina on 02.04.2023.
//

import Foundation
import UIKit
extension UITableView {
    func sizeHeaderToFit(insets: CGFloat) {
        guard let headerView = tableHeaderView else { return }
        
        let newHeight = headerView.systemLayoutSizeFitting(CGSize(width: frame.width, height: .greatestFiniteMagnitude), withHorizontalFittingPriority: .required, verticalFittingPriority: .defaultLow)
        var frame = headerView.frame
        
        // avoids infinite loop!
        if newHeight.height != frame.height {
            frame.size.height = newHeight.height + insets
            headerView.frame = frame
            tableHeaderView = headerView
        }
    }
    
    func sizeFooterToFit() {
        guard let footerView = tableFooterView else { return }
        
        let newHeight = footerView.systemLayoutSizeFitting(CGSize(width: frame.width, height: .greatestFiniteMagnitude), withHorizontalFittingPriority: .required, verticalFittingPriority: .defaultLow)
        var frame = footerView.frame
        
        // avoids infinite loop!
        if newHeight.height != frame.height {
            frame.size.height = newHeight.height
            footerView.frame = frame
            tableFooterView = footerView
        }
    }
}
