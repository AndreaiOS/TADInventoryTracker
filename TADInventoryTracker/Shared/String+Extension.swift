//
//  String+Extension.swift
//  TADInventoryTracker
//
//  Created by Andrea Murru on 23/11/2023.
//

import Foundation

extension String: Error, LocalizedError {
    public var errorDescription: String? { self }
}
