FROM golang:1.20

ARG KUBERNETES_VERSION="1.27"
ENV KUBEBUILDER_ASSETS="/root/.local/share/kubebuilder-envtest/k8s/${KUBERNETES_VERSION}-linux-amd64"

RUN go install sigs.k8s.io/controller-runtime/tools/setup-envtest@latest && \
    setup-envtest use ${KUBERNETES_VERSION}

ENTRYPOINT [ "go", "test" ]
