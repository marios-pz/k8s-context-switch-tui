# k8s-context-switch-tui
Easily list and switch context on kubernetes.

# Use case

In places where I can't use K9s, switching between settings becomes a hassle when I have to do it frequently is a short amount of time. 
Typing out `kubectl config get-contexts` to find the right setting and then do `kubectl config use-context <context-name>` becomes a headache.
It gets even more annoying when I have to remember the contexts just to save a tiny bit of time.
That's why I created a basic script that uses pre-installed tools to give me a friendlier way to do this.

# Resources

* https://en.wikibooks.org/wiki/Bash_Shell_Scripting/Whiptail


# License

Project is signed under GPLv3.
