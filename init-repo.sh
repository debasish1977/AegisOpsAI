
#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  docs/{01-requirements,02-architecture/architecture-decisions,03-low-level-design,04-ai-ml-design,05-security,06-capacity-planning,07-benchmarks} \
  backend/common/{event-contracts,security,observability} \
  backend/{control-plane,telemetry-processor,alert-correlation,incident-manager,rca-engine,remediation-service} \
  ai-platform/agents/{supervisor,telemetry-agent,topology-agent,rca-agent,knowledge-agent} \
  ai-platform/orchestration/{graphs,state,checkpoints} \
  ai-platform/mcp-servers/{telemetry,incidents,knowledge} \
  ai-platform/rag/{ingestion,embeddings,retrieval,reranking,evaluation} \
  ai-platform/llm/{bedrock,prompts,guardrails} \
  ai-platform/evaluation/{datasets,agent-evals,tool-evals} \
  ml-platform/{datasets,feature-engineering,training,inference,evaluation,pipelines} \
  ml-platform/models/{statistical,isolation-forest,pytorch-lstm,pytorch-autoencoder} \
  demo-applications/{payment-service,order-service,inventory-service,customer-service,notification-service} \
  infrastructure/terraform/{modules,environments} \
  infrastructure/{helm,kubernetes,docker} \
  observability/{otel-collector,prometheus,grafana,alert-rules} \
  workflows/{step-functions,remediation-runbooks,approval-policies} \
  testing/{integration,contract,performance,chaos,security,end-to-end} \
  scripts/{bootstrap,deploy,cleanup} \
  .github/{workflows,ISSUE_TEMPLATE}

for dir in docs backend ai-platform ml-platform \
  demo-applications infrastructure observability \
  workflows testing scripts; do
  find "$dir" -type d -empty -exec touch {}/.gitkeep \;
done

touch README.md .gitignore .editorconfig .env.example Makefile

echo "AegisOpsAI repository structure initialized."

