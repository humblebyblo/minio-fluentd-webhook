# es index create
curl -X PUT "http://localhost:9200/minio_audit_log" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "properties": {
      "version": { "type": "keyword" },
      "deploymentid": { "type": "keyword" },
      "event": { "type": "keyword" },
      "trigger": { "type": "keyword" },
      "api": {
        "properties": {
          "name": { "type": "keyword" },
          "bucket": { "type": "keyword" },
          "object": { "type": "keyword" },
          "status": { "type": "keyword" },
          "statusCode": { "type": "integer" },
          "rx": { "type": "integer" },
          "tx": { "type": "integer" },
          "txHeaders": { "type": "integer" },
          "timeToFirstByte": { "type": "keyword" },
          "timeToFirstByteInNS": { "type": "keyword" },
          "timeToResponse": { "type": "keyword" },
          "timeToResponseInNS": { "type": "keyword" }
        }
      },
      "remotehost": { "type": "keyword" },
      "requestID": { "type": "keyword" },
      "userAgent": { "type": "keyword" },
      "requestPath": { "type": "keyword" },
      "requestHost": { "type": "keyword" },
      "requestQuery": { "type": "object", "enabled": false },
      "requestHeader": { "type": "object" },
      "responseHeader": { "type": "object" },
      "tags": { "type": "object" },
      "accessKey": { "type": "keyword" }
    }
  }
}'
