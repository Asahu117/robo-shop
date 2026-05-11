FROM nginx:1.21.6-alpine 

WORKDIR /usr/share/nginx/html

EXPOSE 8080

ENV CATALOGUE_HOST=catalogue \
    USER_HOST=user \
    CART_HOST=cart \
    SHIPPING_HOST=shipping \
    PAYMENT_HOST=payment \
    RATINGS_HOST=ratings 

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY static/ ./

COPY entrypoint.sh /root/entrypoint.sh

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT [ "/root/entrypoint.sh" ]

