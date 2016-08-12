//
//  MCCConverter.swift
//  MCCConverter
//
//  Created by Jeremy Tregunna on 2016-08-11.
//  Copyright © 2016 Greenshire, Inc. All rights reserved.
//

import UIKit

// This class converts between E.212 country codes too E.164.
class MCCConverter {
    static let sharedInstance = MCCConverter()!

    private var _table: NSDictionary?
    private var table: NSDictionary {
        get {
            if _table == nil {
                let bundle = NSBundle(forClass: MCCConverter.self)
                guard let fileURL = bundle.URLForResource("mcc", withExtension: "plist") else { return [:] }
                guard let plist = NSDictionary(contentsOfURL: fileURL) else { return [:] }
                _table = plist
            }
            // Guaranteed to never be nil at this point, or have exited early.
            return _table!
        }
    }
    
    init?() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(memoryWarning(_:)), name: UIApplicationDidReceiveMemoryWarningNotification, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIApplicationDidReceiveMemoryWarningNotification, object: nil)
    }
    
    func e164(country: String) -> String? {
        guard let values: NSDictionary = table[country] as? NSDictionary else { return nil }
        return values["e164"] as? String
    }
    
    func e212(country: String) -> String? {
        guard let values: NSDictionary = table[country] as? NSDictionary else { return nil }
        return values["e212"] as? String
    }

    @objc private func memoryWarning(notification: NSNotification) {
        _table = nil
    }
}
