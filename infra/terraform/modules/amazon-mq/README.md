# amazon-mq (sketch)

Amazon MQ **RabbitMQ** broker for Crawl.Api publish + Crawl.Worker consume.

- **Do not apply** before production apply is authorized authorization.
- Wire from a future root module after Compose is green; not hooked into `main.tf` yet.
- Map Compose `RABBITMQ_*` → Secrets Manager; ECS tasks read `RabbitMq__*` env.
