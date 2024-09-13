function kctx --description "Switches the current kubectl context based on the files in '~/.kube/configs'".
    set dangerous_contexts customer prod
    set warning_contexts stage
    set available_contexts (command fd . $HOME/.kube/configs/ -tfile --format '{}') # TODO: print only the basename, but use the complete path internally.
    set chosen_context (printf "%s\n" $available_contexts | fzf)
    or begin
        echo "No context chosen, unsetting Kubernetes context..."
        set -e KUBECONFIG
        return 0
    end

    printf "Set current Kubernetes context to $(basename $chosen_context)."
    set -gx KUBECONFIG $chosen_context
end
