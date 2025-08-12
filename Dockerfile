# Add a new comment to trigger build.
FROM perl:latest
LABEL "maintainer=github.com/eUwSqBTm"
WORKDIR /
RUN apt-get update \
  && apt-get install -y unzip \
  && cpan File::Copy::Recursive File::Glob LWP::Simple TVDB::API Getopt::Long Switch WWW::TheMovieDB JSON::Parse XML::Simple
RUN curl -O https://downloads.sourceforge.net/project/sorttv/SortTV1.38.zip \
  && unzip SortTV1.38.zip
ENTRYPOINT perl /sorttv/sorttv.pl
