FROM quay.io/keycloak/keycloak:17.0.1

COPY ./localhost.crt /opt/keycloak/tls.crt
COPY ./localhost.key /opt/keycloak/tls.key

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_HTTPS_CERTIFICATE_FILE=/opt/keycloak/tls.crt
ENV KC_HTTPS_CERTIFICATE_KEY_FILE=/opt/keycloak/tls.key

# Set setting strict hostname to false
# If want to start prod in local
#ENV KC_HOSTNAME_STRICT=false
#ENTRYPOINT [ "opt/keycloak/bin/kc.sh", "start" ]

ENTRYPOINT [ "opt/keycloak/bin/kc.sh", "start-dev" ]
