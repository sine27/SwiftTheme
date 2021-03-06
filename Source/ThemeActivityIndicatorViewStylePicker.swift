//
//  ThemeActivityIndicatorViewStylePicker.swift
//  SwiftTheme
//
//  Created by Gesen on 2017/1/28.
//  Copyright © 2017年 Gesen. All rights reserved.
//

import UIKit

public final class ThemeActivityIndicatorViewStylePicker: ThemePicker {
    
    public convenience init(keyPath: String) {
        self.init(v: { ThemeActivityIndicatorViewStylePicker.getStyle(stringStyle: ThemeManager.stringForKeyPath(keyPath) ?? "") })
    }
    
    public convenience init(styles: UIActivityIndicatorViewStyle...) {
        self.init(v: { ThemeManager.elementForArray(styles) })
    }
    
    public required convenience init(arrayLiteral elements: UIActivityIndicatorViewStyle...) {
        self.init(v: { ThemeManager.elementForArray(elements) })
    }
    
    public required convenience init(stringLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public required convenience init(unicodeScalarLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public required convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(keyPath: value)
    }
    
    public class func pickerWithKeyPath(_ keyPath: String) -> ThemeActivityIndicatorViewStylePicker {
        return ThemeActivityIndicatorViewStylePicker(keyPath: keyPath)
    }
    
    public class func pickerWithStyles(_ styles: [UIActivityIndicatorViewStyle]) -> ThemeActivityIndicatorViewStylePicker {
        return ThemeActivityIndicatorViewStylePicker(v: { ThemeManager.elementForArray(styles) })
    }
    
    public class func pickerWithStringStyles(_ styles: [String]) -> ThemeActivityIndicatorViewStylePicker {
        return ThemeActivityIndicatorViewStylePicker(v: { ThemeManager.elementForArray(styles.map(getStyle)) })
    }
    
    class func getStyle(stringStyle: String) -> UIActivityIndicatorViewStyle {
        switch stringStyle.lowercased() {
        case "gray"         : return .gray
        case "white"        : return .white
        case "whitelarge"   : return .whiteLarge
        default: return .gray
        }
    }
    
}

extension ThemeActivityIndicatorViewStylePicker: ExpressibleByArrayLiteral {}
extension ThemeActivityIndicatorViewStylePicker: ExpressibleByStringLiteral {}
