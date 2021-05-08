docker-compose run --rm deal_test rails db:environment:set RAILS_ENV=test
docker-compose run --rm deal_test rails db:drop && \
docker-compose run --rm deal_test rails db:create && \
docker-compose run --rm deal_test rails db:migrate && \
docker-compose run --rm deal_test rails test -f --verbose