//
//  JSONResponse.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/11/23.
//

import Foundation

protocol JSONResponse: Decodable {
    associatedtype Response
    
    var array: Response { get }
}
