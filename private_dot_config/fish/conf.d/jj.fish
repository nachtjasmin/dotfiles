command -q jj; and begin
    jj util completion fish | source

    # Bind Alt+R to go to the root of the repository. We have to repaint the commandline afterwards, in
    # order to ensure that the new directory is displayed as intended.
    bind \er 'cd (jj root); commandline -f repaint'
end
