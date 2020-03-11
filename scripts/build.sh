# Uncomment these lines for the very first build...
# go clean github.com/spf13/pflag
# go clean github.com/spf13/cobra
# go clean mynewt.apache.org/newt/util
# go clean mynewt.apache.org/newt/newt/cli
# go clean mynewt.apache.org/newt/newt/newtutil
# go clean mynewt.apache.org/newt/newt/settings

# go get -u github.com/spf13/pflag
# go get -u github.com/spf13/cobra
# go get -u mynewt.apache.org/newt/util
# go get -u mynewt.apache.org/newt/newt/cli
# go get -u mynewt.apache.org/newt/newt/newtutil
# go get -u mynewt.apache.org/newt/newt/settings

set -e  #  Exit when any command fails
set -x  #  Echo commands

cd size_report
# go clean
/usr/local/go/bin/go build
./size_report
# go build -a -v -x
