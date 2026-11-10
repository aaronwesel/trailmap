# DO NOT APPLY

`terraform apply` / `destroy` from this tree is **forbidden before production apply is authorized**.

Prep work is limited to `fmt`, `init -backend=false`, and `validate`.

## Slack webhook secret (note only)

`modules/secrets` may list `SLACK_WEBHOOK_URL` / `SLACK_ENABLED` inside the app secret JSON shell. That is documentation + placeholder wiring for production launch — **not** permission to apply or to commit a real webhook URL.
