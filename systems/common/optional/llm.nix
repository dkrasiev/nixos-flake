{ outputs, ... }:

{
  environment.systemPackages = with outputs.pkgs; [
    ### LLM
    lmstudio
    # ollama
    ollama-rocm # AMD only
  ];
}
