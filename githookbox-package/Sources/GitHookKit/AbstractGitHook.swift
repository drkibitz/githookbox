//
//  AbstractGitHook.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/11/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

public class AbstractGitHook {

    public let identifier: GitHookIdentifier
    public let args: [String]

    public required init(identifier: GitHookIdentifier, args: [String]) {
        self.identifier = identifier
        self.args = args;
    }
}
