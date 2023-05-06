
from ubuntu

run apt-get update -y \
&& apt-get install python3 -y\
&& apt-get install python3-flask -y

COPY web/ /web/

EXPOSE 5000

WORKDIR /web
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]