# Load completions of golangci-lint if its installed.
command -q golangci-lint; and command golangci-lint completion fish | source
