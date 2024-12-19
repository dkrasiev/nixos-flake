{ outputs, ... }:

outputs.pkgs.mkShell {
  env = {
    PRISMA_QUERY_ENGINE_LIBRARY = "${outputs.pkgs.prisma-engines}/lib/libquery_engine.node";
    PRISMA_QUERY_ENGINE_BINARY = "${outputs.pkgs.prisma-engines}/bin/query-engine";
    PRISMA_SCHEMA_ENGINE_BINARY = "${outputs.pkgs.prisma-engines}/bin/schema-engine";
  };
}
