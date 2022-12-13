//
//  StorageUtil.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 13.12.2022.
//

import Foundation

final class StorageUtil {
    class func save(_ value: Any, key: String) {
        if value is NSCoding {
            do {
                let data: Data = try NSKeyedArchiver.archivedData(withRootObject: value,
                                                                  requiringSecureCoding: false)
                UserDefaults.standard.setValue(data, forKey: key)
            }catch{
                debugPrint(error.localizedDescription)
            }
        }
    }
    
    
    class func remove(_ key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
    
    class func load(_ key: String) -> AnyObject? {
        guard let value = UserDefaults.standard.value(forKey: key) as? Data else { return nil }
        do {
            guard let array = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(value) else {
                fatalError("unarchiveTopLevelObjectWithData - nil")
            }
            return array as AnyObject
        } catch {
            fatalError("unarchiveTopLevelObjectWithData - Can't encode data: \(error.localizedDescription)")
        }
    }
}
