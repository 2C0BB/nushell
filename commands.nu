export def pretty_git_log [] {
    git log --pretty=%aN»¦«%s»¦«%aD | lines | split column "»¦«" committer desc merged_at
}
