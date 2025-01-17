command -q jj; and begin
    # There are static and dynamic completions in jj. The "jj util completion fish" command actually
    # only prints the static completions, but not the dynamic ones, added in v0.24.0.
    #
    # Note: This does not seem to work reliably on Fish 4.0 (currently in beta).
    # See also: https://github.com/fish-shell/fish-shell/pull/11046
    COMPLETE=fish jj | source

    # Bind Alt+R to go to the root of the repository. We have to repaint the commandline afterwards, in
    # order to ensure that the new directory is displayed as intended.
    bind \er 'cd (jj root); commandline -f repaint'
end
