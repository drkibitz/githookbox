# githookbox

> WIP: So far, this is just my first experiment at creating
> a Swift executable using the [Swift Package Manager](https://github.com/apple/swift-package-manager).
> Also keeping an Xcode project going just for a decent comparison.

Please see [githooks.txt - Hooks used by Git](https://github.com/git/git/blob/master/Documentation/githooks.txt)

Here is a quick synopsis...
Hooks are little scripts you can place in `$GIT_DIR/hooks` directory to trigger action at certain points.
`$GIT_DIR` is `your-git-repository/.git`. It is a requirement for a given hook to be executable.

The hooks:
- applypatch-msg
- pre-applypatch
- post-applypatch
- pre-commit
- prepare-commit-msg
- commit-msg
- post-commit
- pre-rebase
- post-checkout
- post-merge
- pre-push
- pre-receive
- update
- post-receive
- post-update
- push-to-checkout
- pre-auto-gc
- post-rewrite
