# Add a new comment to trigger build.
FROM perl:latest
WORKDIR /
RUN apt-get update \
  && apt-get install -y unzip curl wget \
  && cpan File::Copy::Recursive File::Glob LWP::Simple TVDB::API Getopt::Long Switch WWW::TheMovieDB JSON::Parse XML::Simple
RUN wget https://github.com/eUwSqBTm/sorttv/raw/refs/heads/main/SortTV1.38.zip \
&& unzip SortTV1.38.zip
ENTRYPOINT perl /sorttv/sorttv.pl
