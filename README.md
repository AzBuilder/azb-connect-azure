# azb-connect-azure
AKS Pod init container that connects to Azure using the POD Identity or Azure Service Principal.

## Build Docker Image

```bash
docker build -t azb-connect-azure .
```

## Running Docker Image

These are the environment variables that the docker image suppor:

|Name        | Comment                         |
|:-----------|---------------------------------|
|SP_USER     | Service Principal Application Id|
|SP_PASSWORD | Service Principal Secret        |
|SP_TENANT   | Service Principal Tenant        |
|MSI         | Value should be "true" if you want to use the POD identity to connect to Azure|

### Examples

Using Pod Identity

```bash
docker run -e MSI=true azb-connect-azure
```

Using Service Principal

```bash
docker run -e SP_USER=XXXXX -e SP_PASSWORD=XXXXX -e SP_TENANT=XXXXX azb-connect-azure
```