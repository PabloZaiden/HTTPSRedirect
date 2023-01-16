FROM nginx:alpine

# Copy the nginx configuration file
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY custom-entrypoint.sh /custom-entrypoint.sh

ENV SOURCE_PORT=443
ENV TARGET_PORT=443
ENV TARGET_HOST=google.com
ENV DNS_SERVER=1.1.1.1

ENTRYPOINT [ "/custom-entrypoint.sh" ]