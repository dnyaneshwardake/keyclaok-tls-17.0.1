FROM quay.io/keycloak/keycloak:17.0.1

COPY ./localhost.crt /opt/keycloak/tls.crt
COPY ./localhost.key /opt/keycloak/tls.key

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_HTTPS_CERTIFICATE_FILE=/opt/keycloak/tls.crt
ENV KC_HTTPS_CERTIFICATE_KEY_FILE=/opt/keycloak/tls.key

ENTRYPOINT [ "opt/keycloak/bin/kc.sh", "start-dev" ]
