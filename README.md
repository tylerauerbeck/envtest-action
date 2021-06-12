Envtest Action - integration tests for kubernetes custom controllers
===
This action runs integration tests for Kubernetes custom controllers with [envtest library](https://pkg.go.dev/sigs.k8s.io/controller-runtime/pkg/envtest).

Inputs
---

### `version`
**[required]** Version of the envtest assets. (default: `0.20.2`) See [here](https://github.com/kubernetes-sigs/controller-runtime/blob/master/tools/setup-envtest/workflows/workflows_testutils_test.go) for available versions.

### `args`
[optional] Arguments passed to the go test command. (default: `./...`) 
If "`./...`" is specified here, the command "`go test ./...`" will be executed.

See [here](https://github.com/kubernetes-sigs/controller-runtime/blob/master/tools/setup-envtest/workflows/workflows_testutils_test.go) for available versions.

Example usage
---

```yaml
uses: phalanks/envtest-action@v1.0.0-rc
with:
  version: '0.20.2'
  args: './...'
```