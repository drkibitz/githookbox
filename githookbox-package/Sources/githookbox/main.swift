//
//  main.swift
//  githookbox
//
//  Created by Dr. Kibitz on 3/10/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com> All rights reserved.
//

#if IGNORE_GIT_HOOK_KIT_IMPORT
#else
import GitHookKit
#endif

GitHookKit.getGitHookForArguments(Process.arguments).run()
