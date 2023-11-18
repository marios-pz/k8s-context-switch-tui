#!/bin/bash

get_kube_contexts() {
  kubectl config get-contexts -o name
}

show_menu() {
  local options=()
  local context
  while IFS= read -r context; do
    options+=("$context" "")
  done < <(get_kube_contexts)

  local selected_context
  selected_context=$(whiptail --title "Kubernetes context switch" --menu "Use UP/DOWN arrow keys to navigate" 15 50 4 "${options[@]}" 3>&1 1>&2 2>&3)

  if [ -n "$selected_context" ]; then
    echo "$selected_context"
  else
    echo "Canceled"
  fi
}

main(){
    selected_context=$(show_menu)

    if [ "$selected_context" != "Canceled" ]; then
      kubectl config use-context "$selected_context"
      echo "Selected Kubernetes context: $selected_context"
    else
      echo "Context selection canceled."
    fi
}

main
