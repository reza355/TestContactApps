//
//  NetworkHandler.swift
//  ContactApps
//
//  Created by Fathureza Januarza on 15/09/20.
//  Copyright © 2020 Fathureza Januarza. All rights reserved.
//

import Foundation
import Moya
import RxSwift

internal enum ContactListTarget {
    case getContactList
}

extension ContactListTarget: TargetType {
    internal var baseURL: URL {
        
        guard let url = URL(string: "http://gojek-contacts-app.herokuapp.com/contacts.json") else { return NSURL() as URL }
        return  url
    }

    internal var path: String {
        return ""
    }

    internal var method: Moya.Method {
        return .get
    }

    internal var params: [String: Any]? {
        return [:]
    }

    internal var task: Task {
        return Task.requestParameters(parameters: params ?? [:], encoding: JSONEncoding.default)
    }

    internal var headers: [String: String]? {
        return nil
    }

    internal var sampleData: Data {
        return Data()
    }
}
