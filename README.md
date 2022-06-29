# rcp-oauth-provider
Red Hat Container Platform resources for oauth-provider

Resource definitions for deploying the Oauth Provider. This is a docker
container developed and build by an external party which provides login services to the
contract app with meemoo ldap credentials.

## Deployment

### Login to OCP and select the target namespace

### Create the skryv docker repo credential
```
oc create secret docker-registry <secretname> \
     --docker-server=<registry hostname>   --docker-username=<username> \
     --docker-password=`<password>`   --docker-email=<email>
```

### Link the secret to the default service account
```
oc secrets link default <secretname> --for=pull
```

### Import and tag the image stream
```
oc import-image <registry>/<image>:<tag> --confirm
oc tag <image>:<tag> <image>:qas
oc tag <image>:<tag> <image>:prd
oc set image-lookup oauth-provider
```

### Create the SSL certificate/key secrets star.viaa.be-<env>

### Deploy the resources as define in the yaml files of this repo
```
./deploy.sh param.qas
```

## Deploy script

The deploy script `deploy.sh` creates an openshifty template from the parameterised
yaml resource definitions using the parameters provided in the parameter file.

This allows to deploy the same resources consistenly for different environments.
The parameters used for the config secret are base64 encoded values. These are created
from a file using the command `base64 -w0 <file>`.
For example, the file properties.example is included in param.example as parameterAPPLICATION_PROPERTIES.

Usage: `deploy.sh <parameter file> [ resource.yaml ]`

When no resource.yaml file is specified, the script will process all yaml files in the 
working directory.

