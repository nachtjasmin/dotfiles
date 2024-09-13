# Load completions of golangci-lint if its installed.
if command -v golangci-lint
    golangci-lint completion fish | source
end
