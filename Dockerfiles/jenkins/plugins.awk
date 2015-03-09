BEGIN { FS="," }
{
    print "curl -sSL --create-dirs -o /usr/share/jenkins/plugins/" $1 ".hpi https://updates.jenkins-ci.org/" ($2 == "latest" ? "latest/" : "download/plugins/" $1 "/" $2 "/") $1 ".hpi"
}