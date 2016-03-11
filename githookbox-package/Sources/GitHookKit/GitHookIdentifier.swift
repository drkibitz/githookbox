//
//  GitHookIdentifier.swift
//  GitHookKit
//
//  Created by Dr. Kibitz on 3/11/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

public enum GitHookIdentifier: String {

    case None

    case ApplypatchMsg = "applypatch-msg"
    case CommitMsg = "commit-msg"
    case PostApplypatch = "post-applypatch"
    case PostCheckout = "post-checkout"
    case PostCommit = "post-commit"
    case PostMerge = "post-merge"
    case PostReceive = "post-receive"
    case PostRewrite = "post-rewrite"
    case PostUpdate = "post-update"
    case PreApplypatch = "pre-applypatch"
    case PreAutoGc = "pre-auto-gc"
    case PreCommit = "pre-commit"
    case PrePush = "pre-push"
    case PreRebase = "pre-rebase"
    case PreReceive = "pre-receive"
    case PrepareCommitMsg = "prepare-commit-msg"
    case PushToCheckout = "push-to-checkout"
    case Update = "update"

    case GitHookKit = "githookbox"

    public static func fromName(name: String) -> GitHookIdentifier {
        let identifier = GitHookIdentifier(rawValue: name)
        if (identifier != nil) {
            return identifier!
        }
        return GitHookIdentifier.None
    }
}
