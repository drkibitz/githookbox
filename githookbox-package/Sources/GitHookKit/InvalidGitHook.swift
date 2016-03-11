//
//  InvalidGitHook.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/11/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

import Foundation

public final class InvalidGitHook: AbstractGitHook, GitHook {

    public func run() {
        switch(identifier) {
        case .GitHookKit:
            help(identifier.rawValue)
        default:
            let name: String = (Process.arguments[0] as NSString).lastPathComponent
            writeToStdError("Program executed with invalid githook name: \(name)\n\n")
            help(name)
            exit(EXIT_FAILURE)
        }
    }

    private func help(executableName: String) {
        print("usage: \(executableName)")
        print("");
        print("This program should serve as the executable for githooks.")
        print("It should either be executed with the name 'githookbox',")
        print("or a name from the following list of supported githooks.")
        print("");

        let identifiers: [GitHookIdentifier] = [
            .ApplypatchMsg,
            .CommitMsg,
            .PostApplypatch,
            .PostCheckout,
            .PostCommit,
            .PostMerge,
            .PostReceive,
            .PostRewrite,
            .PostUpdate,
            .PreApplypatch,
            .PreAutoGc,
            .PreCommit,
            .PrePush,
            .PreRebase,
            .PreReceive,
            .PrepareCommitMsg,
            .PushToCheckout,
            .Update
        ]
        for id: GitHookIdentifier in identifiers {
            print("- \(id.rawValue)")
        }

        print("")
        print("This is a WIP...")
        print("")
        dump(self)
        print("")
    }
}
