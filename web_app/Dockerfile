FROM julia:1.5

RUN apt-get update && \
  apt-get install -y vim gzip wget curl

RUN julia -e 'using Pkg; Pkg.add("Genie");'

RUN julia -e 'using Genie; Genie.newapp("julia_app");'
