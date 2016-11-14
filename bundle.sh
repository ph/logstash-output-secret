export VERSION=5.0.1
bundle install --path vendor
bundle exec rake vendor
bundle exec rake paquet:vendor
rm -rf build/
mkdir -p build/x-pack-$VERSION/logstash/logstash-monitoring
cp -r dependencies build/x-pack*/logstash/logstash-monitoring
gem build logstash-output-secret.gemspec
mv logstash-output-secret*.gem build/x-pack-*/logstash/logstash-monitoring

# Generate stuff for a uber zip
mkdir -p build/x-pack-$VERSION/elasticsearch
touch build/x-pack-$VERSION/elasticsearch/README.md

mkdir -p build/x-pack-$VERSION/kibana
touch build/x-pack-$VERSION/kibana/README.md

cd build/
zip -r x-pack-$VERSION.zip x-pack-$VERSION
cd ..
