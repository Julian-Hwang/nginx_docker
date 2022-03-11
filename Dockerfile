FROM nginx:1.21
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/html/index.html /usr/share/nginx/html/index.html
RUN echo "<html><body><h1>Hello Docker!!!</h1></body></html>" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
