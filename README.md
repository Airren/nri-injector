# NRI Injector 

NRI Injector is a NRI plugin that allows you to inject environment variables into all the pod of a kubernetes cluster.

## Installation
```bash
kubectl apply -f ./deploy/nri-injector-ds.yaml 
```



## Configuration
```bash
Usage of ./bin/nri-injector:
  -add-annotation string
        add this annotation to containers
  -add-env string
        add this environment variable for containers
  -events string
        comma-separated list of events to subscribe for (default "all")
  -idx string
        plugin index to register to NRI
  -log-file string
        logfile name, if logging to a file
  -name string
        plugin name to register to NRI
  -no-proxy string
        set no proxy for containers (default "10.0.0.0/8")
  -proxy string
        set proxy for containers (default "http://proxy.xxxx.com:911")
  -set-annotation string
        set this annotation on containers
  -set-env string
        set this environment variable for containers

```