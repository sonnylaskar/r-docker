FROM r-base:3.6.3

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN apt-get update -y
RUN apt-get install -y libssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libcurl4-openssl-dev


RUN R -e "source('install_r_requirements.R')"

#CMD ["./start.sh"]


