# Enable automatic PR suggestion for "gh pr checkout"

# This prints all open pull requests by displaying the number first and the title as description.
function __fish_open_gh_pull_requests
    gh pr list --json number,title --template '{{ range .}}{{ .number }}{{"\t"}}{{.title}}{{"\n"}}{{end}}'
end

# Only display the PRs when we are on both the "pr" and the "checkout" subcommand.
complete -c gh -n "__fish_seen_subcommand_from pr; and __fish_seen_subcommand_from checkout" \
    -ra "(__fish_open_gh_pull_requests)" \
    --no-files
