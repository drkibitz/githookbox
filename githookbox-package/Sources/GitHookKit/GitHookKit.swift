//
//  GitHookKit.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/10/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

import Foundation

internal func writeToStdError(str: String) {
    let handle = NSFileHandle.fileHandleWithStandardError()
    if let data = str.dataUsingEncoding(NSUTF8StringEncoding) {
        handle.writeData(data)
    }
}

public final class GitHookKit {

    public static func getGitHookForArguments(arguments: [String]) -> GitHook {

        let name: String = (arguments[0] as NSString).lastPathComponent.lowercaseString
        let args: [String] = Array(arguments[1..<arguments.count])
        let identifier: GitHookIdentifier = GitHookIdentifier.fromName(name)

        switch identifier {
        case .ApplypatchMsg: return ApplypatchMsgGitHook(identifier: identifier, args: args)
        case .CommitMsg: return CommitMsgGitHook(identifier: identifier, args: args)
        case .PostApplypatch: return PostApplypatchGitHook(identifier: identifier, args: args)
        case .PostCheckout: return PostCheckoutGitHook(identifier: identifier, args: args)
        case .PostCommit: return PostCommitGitHook(identifier: identifier, args: args)
        case .PostMerge: return PostMergeGitHook(identifier: identifier, args: args)
        case .PostReceive: return PostReceiveGitHook(identifier: identifier, args: args)
        case .PostRewrite: return PostRewriteGitHook(identifier: identifier, args: args)
        case .PostUpdate: return PostUpdateGitHook(identifier: identifier, args: args)
        case .PreApplypatch: return PreApplypatchGitHook(identifier: identifier, args: args)
        case .PreAutoGc: return PreAutoGcGitHook(identifier: identifier, args: args)
        case .PreCommit: return PreCommitGitHook(identifier: identifier, args: args)
        case .PrePush: return PrePushGitHook(identifier: identifier, args: args)
        case .PreRebase: return PreRebaseGitHook(identifier: identifier, args: args)
        case .PreReceive: return PreReceiveGitHook(identifier: identifier, args: args)
        case .PrepareCommitMsg: return PrepareCommitMsgGitHook(identifier: identifier, args: args)
        case .PushToCheckout: return PushToCheckoutGitHook(identifier: identifier, args: args)
        case .Update: return UpdateGitHook(identifier: identifier, args: args)
        default: return InvalidGitHook(identifier: identifier, args: args)
        }
    }
}
