# vprofile Helm Chart

This Helm chart deploys the vprofile application on Kubernetes. It includes configurations for various components such as deployments, services, ingress, config maps, and secrets.

## Chart Structure

The chart follows a standard Helm chart structure:

- **Chart.yaml**: Contains metadata about the chart.
- **values.yaml**: Defines configurable variables for the chart.
- **templates/**: Contains Kubernetes resource templates.
  - **deployment.yaml**: Templates for deployments.
  - **service.yaml**: Templates for services.
  - **ingress.yaml**: Templates for ingress resources.
  - **configmap.yaml**: Templates for config maps.
  - **secret.yaml**: Templates for secrets.
  - **_helpers.tpl**: Helper templates for reuse.
  - **NOTES.txt**: Instructions post-installation.

## Usage

To install the chart, use the following command:

```
helm install <release-name> ./vprofile
```

Replace `<release-name>` with your desired release name.

## Configuration

The following configuration options are available in `values.yaml`:

- **app**: Configuration for the application deployment.
- **db**: Configuration for the database deployment.
- **memcached**: Configuration for the memcached deployment.
- **rabbitmq**: Configuration for the RabbitMQ deployment.
- **initcontainers**: Configuration for any init containers.
- **ingress**: Ingress settings including:
  - `enabled`: Enable or disable ingress.
  - `host`: Hostname for the ingress.
  - `servicePort`: Port for the service.
- **secrets**: Configuration for sensitive information.
- **dockerregistry**: Docker registry settings including:
  - `enabled`: Enable or disable the use of a private registry.
  - `server`: Registry server address.
  - `username`: Username for the registry.
  - `password`: Password for the registry.
  - `email`: Email associated with the registry account.

## Notes

After installation, you can access your application using the configured ingress. Make sure to check the service and ingress configurations to ensure proper routing.