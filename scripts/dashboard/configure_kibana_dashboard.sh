#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

curl -X POST "http://ec2-34-238-255-241.compute-1.amazonaws.com:5601/api/saved_objects/_import?overwrite=true" -H "kbn-xsrf: true" -H "securitytenant: global" --form file=@${DIR}/cp-demo.ndjson
