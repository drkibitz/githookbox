//
//  UpdateGitHook.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/11/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

public final class UpdateGitHook: AbstractGitHook, GitHook {

    public func run() {
        dump(self)
    }
}
