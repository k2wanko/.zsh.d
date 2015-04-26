if [ -x "`which go`" ]; then
  export GOROOT="/usr/local/Cellar/go/$(brew info go | tr "\n" " " | awk '{print $3}')/libexec/"
#$(brew info go | grep -o -e ^/[\/a-zA-Z0-9\.]\*)/libexec
  export GOPATH=$HOME/go
fi
