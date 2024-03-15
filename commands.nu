export def pretty_git_log [] {
    git log --pretty=%aN»¦«%s»¦«%aD | lines | split column "»¦«" committer desc merged_at
}

export def cargo_clean_all [] {
    for $d in (ls | where type == dir | get name) {
        if ($d | path join "Cargo.toml" | path exists) {
            cd $d
            cargo clean
            cd ..
        }
    }
    null
}
