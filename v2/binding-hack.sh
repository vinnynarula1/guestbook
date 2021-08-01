#!/bin/bash

tone_analyzer= "Tone Analyzer-3l"



B64_URL="https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/6e77633d-f79c-4417-83ce-78ce773458ba"
B64_APIKEY="tcZ6OXr7n2sLq03qHt_yKgNCXoCKE5Ji9r2CdgmOUDj8"

cat <<EOF | oc apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: binding-tone
  namespace: sn-labs-vinnynarula8
type: Opaque
data:
  url: $B64_URL
  apikey: $B64_APIKEY
EOF
