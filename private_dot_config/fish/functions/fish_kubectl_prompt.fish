function fish_kubectl_prompt --description 'Write out the kubectl prompt'
    # If kubectl isn't installed, there's nothing we can do.
    # Return 1, so that the calling prompt can deal with it.
    if not command -sq kubectl
        return 1
    end

    set -l _current_context (kubectl config view --minify -ojson 2> /dev/null | jq '.contexts[0].context')

    # If the current context is unset, return.
    test -z "$_current_context"; and return 1

    set -l _current_cluster (echo $_current_context | jq -r '.cluster')

    # Each cluster is managed via a different kubeconfig file (see kctx.fish).
    # If it's set, take the filename (without extension) as an additional description.
    if test -n "$KUBECONFIG"
        set _current_cluster "$(string replace -r '\.ya?ml' '' (path basename $KUBECONFIG)) ($_current_cluster)"
    end

    # If not known, the namespace is "default".
    set -l _current_namespace (echo $_current_context | jq -r '.namespace // "default"')
    set -f _kubectx $_current_cluster

    # If the namespace is available, set it as well.
    if test -n "$_current_namespace"
        set -fa _kubectx in $_current_namespace
    end

    set_color blue
    echo -n "on $_kubectx"
    set_color normal
end
