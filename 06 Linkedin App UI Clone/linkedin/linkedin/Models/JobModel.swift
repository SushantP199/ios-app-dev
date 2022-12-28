//
//  JobModel.swift
//  linkedin
//
//  Created by iSushant on 28/12/22.
//

import Foundation

struct JobModel {
    var id: Int
    var companyLogo: String
    var role: String
    var companyName: String
    var location: String
    var hourAgo: Int
    var isEasyApply: Bool = true
}
