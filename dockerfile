FROM nginx
MAINTAINER colin
WORKDIR /html

RUN mkdir -p /html
ADD ./html /html
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./conf.d /etc/nginx/conf.d
ENV LANG zh_CN.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["nginx","-g","daemon off;"]
