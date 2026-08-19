# Project Configuration

## Snowflake Environment

- **Database:** DEMO_DB
- **Schema:** TPCH_TRANSFORMED
- **Warehouse:** DEMO_WH

## dbt

- Build all models: `dbt build --project-dir dbt/`
- Build a single model: `dbt build --select <model_name> --project-dir dbt/`

## Conventions

- Model files use snake_case naming
- Source data is TPCH_SF1 in SNOWFLAKE_SAMPLE_DATA; all raw tables must be referenced through `_sources.yml`

## Git Workflow

- Feature branches follow the pattern: `feature/<description>`
- PRs are required before merging to main

## Tooling

- This project uses CoCo Desktop — do not use the `cortex` CLI command
