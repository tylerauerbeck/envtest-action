#!/bin/bash

KUBEBUILDER_ASSETS="$(setup-envtest use ${KUBERNETES_VERSION} -p path)" go test ${ARGS}
