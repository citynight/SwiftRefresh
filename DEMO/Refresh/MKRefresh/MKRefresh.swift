//
//  MKRefresh.swift
//  Refresh
//
//  Created by Mekor on 2016/11/27.
//  Copyright © 2016年 Mekor. All rights reserved.
//

import UIKit


fileprivate var refreshView: MKRefreshControl?
fileprivate var headerBlock: (()->Void)?

extension UIScrollView {
    
    
    
    
    /// 添加下拉刷新
    ///
    /// - Parameter complete: 完成回调
//    func addRedreshHeader(complete: @escaping () -> Void) {
    func addRedreshHeader(_ loadNewData: Selector) {
        refreshView = MKRefreshControl()
        guard let refreshView = refreshView else {
            return
        }
        self.addSubview(refreshView)
        
        refreshView.addTarget(nil, action: loadNewData, for: .valueChanged)
    }
    
    
    func endRefreshing() {
        refreshView?.endRefreshing()
    }
    
    
}
