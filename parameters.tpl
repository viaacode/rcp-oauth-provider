parameters:
- description: Application name
  displayName: Name
  name: APP
  required: true
- description: Envirinment also used as image stream tag
  displayName: Name
  name: ENV
  required: true
- description: Application Properties
  displayName: Application Properties
  name: APPLICATION_PROPERTIES
  required: true
- description: Tomcat Keystore
  displayName: Tomcat keystore
  name: KEYSTORE_TOMCAT
  required: true
- description: public hostname
  name: HOSTNAME
  displayName: Hostname
  required: true
- description: TLS certificate sha1 fingerprint as given by openssl x509 -fingerprint
  name: TLS_CERT_FINGERPRINT
  displayname: TLS_CERT_FINGERPRINT
  required: true
- description: TLS certificate expiry date YYYY-MM-DD
  name: TLS_CERT_EXPIRY
  displayname: TLS_CERT_EXPIRY
  required: true
- description: meemoo.be/ingressclass
  name: INGRESSCLASS
  displayname: INGRESSCLASS
  required: true
- description: Kubernetes IngressClassName
  name: INGRESSCLASSNAME
  displayname: INGRESSCLASSNAME
  required: true
