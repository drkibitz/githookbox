//
//  GitHook.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/11/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

public protocol GitHook {
    var identifier: GitHookIdentifier { get }
    init(identifier: GitHookIdentifier, args: [String])
    func run()
}
