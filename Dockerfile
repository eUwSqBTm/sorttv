# Add a new comment to trigger build.
FROM perl:latest

WORKDIR /

RUN cpan File::Copy::Recursive File::Glob LWP::Simple LWP::Protocol:https TVDB::API Getopt::Long Switch WWW::TheMovieDB JSON::Parse XML::Simple \
&& mkdir /sorttv \
&& wget -O /sorttv/sorttv.pl https://raw.githubusercontent.com/eUwSqBTm/sorttv/main/sorttv.pl

ENTRYPOINT perl /sorttv/sorttv.pl
