function kns --description 'Switches the default namespace for the current context.'
    set available_namespaces (kubectl get namespaces -o go-template --template '{{ range .items }}{{ printf "%s\n" .metadata.name }}{{ end }}'); or return
    set chosen (printf "%s\n" $available_namespaces | fzf)
    or begin
        echo "no namespace chosen :c"
        return 1
    end

    command kubectl config set-context --current --namespace=$chosen
end
