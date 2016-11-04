bundle install --path vendor
bundle exec rake vendor
bundle exec rake paquet:vendor
rm -rf build/
mkdir -p build/logstash-output-secret
cp -r dependencies build/logstash-output-secret
gem build logstash-output-secret.gemspec
mv logstash-output-secret*.gem build/logstash-output-secret
cd build/
#tar -czvf logstash-output-secret-5.0.0.tar.gz logstash-output-secret
zip -r logstash-output-secret-5.0.0.zip logstash-output-secret
cd ..
