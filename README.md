# minio-fluentd-webhook

Refer to this code when you want to store logs in Elasticsearch via Minio's webhook.

https://min.io/docs/minio/linux/operations/monitoring/minio-logging.html#minio-logging-publish-audit-logs

support
- minio audit log webhook
- minio server log webhook

elasticsearch
- version 7.x

fluentd gem
- elasticsearch (client) : v7.0.0 https://rubygems.org/gems/elasticsearch/versions
- fluent-plugin-elasticsearch : latest https://docs.fluentd.org/output/elasticsearch
